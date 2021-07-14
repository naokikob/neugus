(* learning for CHC with multiple predicates: three layer version *)
open Torch
open Global                
                 
let data_to_floatlist dl =
  if !mod2 then
    List.fold_right
      (fun d l ->
        match d with
          Float(x) -> x::l
        | Int(n) -> (Float.of_int n)::(Float.of_int (absmod n 2))::l
        | Bool(b) -> (if b then 1.0 else 0.0)::l
      )        
      dl
      []
  else
    List.map datum_to_float dl
  
let create_datahash() =
  let register_atom i (p,args) =
    let tab = Hashtbl.find rawdatatab p in
    let tempid = if i>0 then P(0) else if i=0 then I(0) else N(0) in
    if Hashtbl.mem tab args then () else Hashtbl.add tab args tempid
  in
  let convert_atom (p,args) =
    (*    let tab = Hashtbl.find rawdatatab p in fst(Hashtbl.find tab args) *)
    (p, id_of_atom p args)
  in
  (Hashtbl.iter (fun p _ -> Hashtbl.add rawdatatab p (Hashtbl.create 64)) signatures;
   Hashtbl.iter
     (fun p _ -> if Hashtbl.mem biastab p then ()
                 else Hashtbl.add biastab p (if !poly then [] else !standard_biases))
     signatures;
   (* for the moment, biases are uniform accross predicates *)
   List.iter (register_atom 1) !posc;
   List.iter (register_atom (-1)) !negc;
   List.iter
     (fun (nl,pl) ->
       List.iter (register_atom 0) nl;
       List.iter (register_atom 0) pl) !impc;
   Hashtbl.iter
     (fun p tab ->
       let (pdata,ndata,idata) = Hashtbl.fold
         (fun args atomid (pl,nl,il) ->
           match atomid with
             P _ -> (args::pl, nl, il)
           | N _ -> (pl, args::nl, il)
           | I _ -> (pl, nl, args::il)
         )
         tab
         ([],[],[])
       in
       let pdataarray = Array.of_list pdata in
       let ndataarray = Array.of_list ndata in
       let idataarray = Array.of_list idata in
       let biases = Hashtbl.find biastab p in
       let pdatatensor = Tensor.of_float2 ~device:!Global.device
                          (Array.map
                             (fun l -> Array.of_list ((data_to_floatlist l)@biases))
                             pdataarray)
       in
       let ndatatensor = Tensor.of_float2 ~device:!Global.device
                          (Array.map
                             (fun l -> Array.of_list ((data_to_floatlist l)@biases))
                             ndataarray)
       in
       let idatatensor = Tensor.of_float2 ~device:!Global.device
                          (Array.map
                             (fun l -> Array.of_list ((data_to_floatlist l)@biases))
                             idataarray)
       in
       let psize = Array.length pdataarray in
       let nsize = Array.length ndataarray in
       let isize = Array.length idataarray in
       (Hashtbl.add datatab p ((psize, pdatatensor),
                               (nsize, ndatatensor),
                               (isize, idatatensor)));
       (* assign ids to atoms *)
        for i=0 to psize-1 do
          let y = pdataarray.(i) in
          Hashtbl.replace tab y (P(i));
          Hashtbl.add id2rawdatatab (P(i)) y
        done;
        for i=0 to nsize-1 do
          let y = ndataarray.(i) in
          Hashtbl.replace tab y (N(i));
          Hashtbl.add id2rawdatatab (N(i)) y
        done;
        for i=0 to isize-1 do
          let y = idataarray.(i) in
          Hashtbl.replace tab y (I(i));
          Hashtbl.add id2rawdatatab (I(i)) y
        done
     )
     rawdatatab;
   positives := List.map convert_atom !posc;
   negatives := List.map convert_atom !negc;
   implications := List.map
                     (fun (nl,pl) -> (List.map convert_atom nl, List.map convert_atom pl))
                     !impc
  )

exception UnSat  
exception QueueEmpty
type atomic_cons = POS of atom | NEG of atom
let pqueue = ref []
let nqueue = ref []
let enqueue_pos atoms =
  pqueue := List.rev_append atoms !pqueue
let enqueue_neg atoms =
  nqueue := List.rev_append atoms !nqueue
let dequeue_constr() =
  match !pqueue with
    [] ->
    (match !nqueue with
       [] -> raise QueueEmpty
     | (p,arg)::atoms -> (nqueue := atoms; NEG(p,arg)))
  | (p,arg)::atoms -> (pqueue := atoms; POS(p,arg))
  
let propagate() =
  (
(* enqueue_pos !positives;
   enqueue_neg !negatives;
 *)
   enqueue_pos !posc;
   enqueue_neg !negc;
   try
     while true do
       let x = dequeue_constr() in
       match x with
         POS(p,arg) ->
          let a = (p,arg) in
          (negc :=
            List.map (fun (a') ->
                if a=a' then raise UnSat
                else a') !negc;
           impc :=
             List.fold_left
               (fun imp (nl,pl) ->
                 let nl' = List.filter (fun a' -> not(a=a')) nl in
                 if nl=nl' then (nl,pl)::imp
                 else if nl'=[]&&pl=[] then raise UnSat
                 else if List.length nl'=1 && pl=[] then
                     let a' = List.hd nl' in
                     (negc := a'::!negc;
                      enqueue_neg [a'];
                      imp)
                 else if nl'=[]&&List.length(pl)=1 then
                     let a' = List.hd pl in
                     (posc := a'::!posc;
                      enqueue_pos [a'];
                      imp)
                 else
                   (nl',pl)::imp
               )
               []
               !impc
          )
       | NEG(p,arg) ->
          let a = (p,arg) in
          (posc :=
            List.map (fun (a') ->
                if a=a' then raise UnSat
                else a') !posc;
           impc :=
             List.fold_left
               (fun imp (nl,pl) ->
                 let pl' = List.filter (fun a' -> not(a=a')) pl in
                 if pl=pl' then (nl,pl)::imp
                 else if nl=[]&&pl'=[] then raise UnSat
                 else if List.length nl=1 && pl'=[] then
                     let a' = List.hd nl in
                     (negc := a'::!negc;
                      enqueue_neg [a'];
                      imp)
                 else if nl=[]&&List.length(pl')=1 then
                     let a' = List.hd pl' in
                     (posc := a'::!posc;
                      enqueue_pos [a'];
                      imp)
                 else
                   (nl,pl')::imp
               )
               []
               !impc
          )
     done
   with QueueEmpty ->
     num_of_constraints := List.length (!posc) + List.length (!negc) + List.length (!impc)
  )
(*                        
  propagate_pos2neg();
  propagate_pos2imp();
  propagate
  let flag = ref false in
  (List.fold_left
     (fun newimpconstr (l,x) ->
       let l' = List.filter (fun y -> not(List.mem y !pos_constr)) l in
       if l=l' then newimpconstr
       else
         (if l'=[] then (flag := true; post_const := x::!pos_constr; newimpconstr)
          else (l',x)::newimpconstr))
     []
     !imp_constr;
   if !flag then propagate()
   else
     let 
 *)
                    
let init() =
  (Hashtbl.clear datatab;
   propagate();
   create_datahash();
   )
  
let linear1fun nodes vs =
  let l1 = Layer.linear vs !hidden_nodes ~activation:Sigmoid ~use_bias:false ~input_dim:nodes
  in
     Layer.forward l1

let linear1 nodes vs =
  Layer.linear vs !hidden_nodes ~activation:Sigmoid ~use_bias:false ~input_dim:nodes 

let poly1 nodes vs =  
  let l11 = MyLayer.poly vs (2*nodes) ~input_dim:nodes in
  let l12 = Layer.linear vs !hidden_nodes ~activation:Sigmoid ~input_dim:(2*nodes) in 
  fun xs -> l11 xs |> Layer.forward l12
  
let linear2 vs =
  Layer.linear vs !hidden_nodes2 ~activation:Sigmoid ~use_bias:true ~input_dim:(!hidden_nodes)
  
let linear3 vs =
  Layer.linear vs 1 ~activation:Sigmoid ~use_bias:true ~input_dim:(!hidden_nodes2)

  
let model layer1 layer2 layer3 xs =
  (*  Layer.forward layer1 xs |> Layer.forward layer2*)
   layer1 xs |> Layer.forward layer2 |> Layer.forward layer3

let prepare_models vs =
  let model_id = ref 0 in
  Hashtbl.iter
    (fun p (_,monomials) ->
      let nodes = (List.length monomials)+(List.length (Hashtbl.find biastab p)) in
      let layer1 = if !poly then
                     poly1 nodes vs
                   else
                     linear1fun nodes vs
      in
      let layer2 = linear2 vs in
      let layer3 = linear3 vs in
      let model_p = model layer1 layer2 layer3 in
      Hashtbl.add modeltab p (!model_id, model_p);
      model_id := 1+ !model_id)
    signatures
  
let reset vs =
  let vs' = Var_store.create ~name:"tmp" ~device:!Global.device () in
 ( Hashtbl.iter
    (fun p (_, monomials) ->
      let nodes = (List.length monomials)+(List.length (Hashtbl.find biastab p)) in
      let _ = linear1 nodes vs' in
      let _ = linear2 vs' in
      let _ = linear3 vs' in
       ())
    signatures;
  Var_store.copy ~src:vs' ~dst:vs)
 (*;
  print_string "weights have been reset to:\n";
  show_weight())
  *)

let loss_pos predictions =
  Hashtbl.fold
    (fun _ ((psize,ppre),_,_) loss ->
      if psize=0 then loss
      else if !lossfun=0 then Tensor.(loss - sum (log (max ppre (f 0.00000001))))
      else if !lossfun=1 then Tensor.(loss + sum (f 1. - ppre))
      else Tensor.(loss + sum ((f 1. - ppre)*(f 1. - ppre)))
    )
    predictions
  (Tensor.f 0.)
let loss_neg predictions =
  Hashtbl.fold
    (fun _ (_,(nsize,npre),_) loss ->
      if nsize=0 then loss
      else if !lossfun=0 then Tensor.(loss - sum (log (max (f 1.00000 - npre) (f 0.00000001))))
      else if !lossfun=1 then Tensor.(loss + sum npre)
      else Tensor.(loss + sum (npre * npre))
    )
    predictions
  (Tensor.f 0.)
(*  
let loss_pos predictions =
  List.fold_left
    (fun s atom ->
      let y = get_prediction predictions atom in
      if !lossfun=0 then Tensor.(s - log y)
      else if !lossfun=1 then Tensor.(s + (f 1. - y))
      else
        Tensor.(s + (f 1. - y)* (f 1. - y)))
    (Tensor.f 0.)
    !positives
let loss_neg predictions =     
  List.fold_left
    (fun s atom ->
      let y = get_prediction predictions atom in
      if !lossfun=0 then Tensor.(s - log (f 1. - y))
      else if !lossfun=1 then Tensor.(s + y)
      else
        Tensor.(s + y * y))
    (Tensor.f 0.)
    !negatives
 *)

let loss_imp predictions =
  List.fold_left
    (fun s (nl, pl) ->
      if !lossfun< -1 then
        let y0 = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p * (- log (max u (f 0.000001)))))
                Tensor.(f 1.)
                pl
        in
        let y = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p * (- log (max (f 1. - u ) (f 0.0000001)))))
                y0
                nl
        in
          Tensor.(s+y)
(* this loss function does not seem working well 
        let y0 = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p - log u ))
                Tensor.(f 0.)
                pl
        in
        let y = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p * (f 1. - u )))
                y0
                nl
        in
        let z0 = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p - log (f 1. - u )))
                Tensor.(f 0.)
                nl
        in
        let z = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p * u))
                z0
                pl
        in
        Tensor.(s+y+z)
 *)
      else
        let y = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                    Tensor.(p * (f 1. - u ))
                )
                Tensor.(f 1.)
                pl
        in
        let z0 = List.fold_left
                (fun p a ->
                  let u = get_prediction predictions a in
                  Tensor.(p * u)
                )
                y
                nl
        in
        let z = if !lossfun=0 then Tensor.(-log (max (f 1. - z0) (f 0.000001)))
                else if !lossfun=3 then Tensor.(z0 * z0)
                else if !lossfun= -1 then
                  Tensor.(log (f 1. - log (max (f 1. - z0) (f 0.000001))))
                else
                  z0
        in
        Tensor.(s+z))
    (Tensor.f 0.)
    !implications

(**  
let rec loss_bool_aux x from upto acc =
  if from>upto then acc
  else
    let y = Tensor.select x 0 from in
    let w = Tensor.(y * y * (y - f 1.) * (y - f 1.)) in
    loss_bool_aux x (from+1) upto Tensor.(acc + w)
  
let loss_bool x = loss_bool_aux x 0 (!datasize - 1) (Tensor.f 0.)
 **)
  
let loss_all x =
  if !num_of_constraints=0 then Tensor.(f 0.)
  else
    Tensor.(((f !pos_w) * loss_pos x + loss_neg x  + (f !pos_i) * loss_imp x) / (f (float_of_int !num_of_constraints)));;

let apply_model() =
  let predictions = Hashtbl.create 16 in
  let dummy_tensor = Tensor.of_float2 ~device:!Global.device [|[||]|]  in
  (last_predictions := predictions;
   Hashtbl.iter
    (fun p ((psize, pdata),(nsize,ndata),(isize,idata)) ->
      let (_,model_p) = Hashtbl.find modeltab p in
      let ppre = if psize>0 then model_p pdata else dummy_tensor in
      let npre = if nsize>0 then model_p ndata else dummy_tensor in
      let ipre = if isize>0 then model_p idata else dummy_tensor in
      Hashtbl.replace predictions p ((psize,ppre), (nsize,npre), (isize, ipre))
    )
    datatab;
   predictions
  )
  
               
let step optm =
  let x = apply_model() in
  let loss = loss_all x in
  let _ = Optimizer.backward_step optm ~loss in
  (loss,x)
  
let print_darray a =
 ( print_string "[";
  Array.iter (fun b -> Array.iter (fun x -> (print_string ((string_of_float x)^"; "))) b;print_string "\n") a;
  print_string "]\n")

let print_floatarray a =
 ( print_string "[";
  Array.iter (fun x -> (print_float x; print_string ", ")) a;
  print_string "]\n")
  
let print_array3 a =
 ( print_string "[";
  Array.iter (fun (x,y,z) -> (print_string ("("^(string_of_float x)^","^(string_of_float y)^","^(string_of_float z)^");\n"))) a;
  print_string "]\n")

let print_array4 a =
 ( print_string "[";
  Array.iter (fun (x,y,z,w) -> (print_string ("("^(string_of_float x)^","^(string_of_float y)^","^(string_of_float z)^","^(string_of_float w)^")\n"))) a;
  print_string "]\n")

let print_weight_aux_sub ((a,b),weight) =
  (print_string "(";
   Array.iter (fun y -> print_string ((string_of_float y)^", ")) a;
   print_string ((string_of_float b)^", "^(string_of_float weight)^")\n"))
  
let print_weight_aux a =
  (print_string "[";
   Array.iter print_weight_aux_sub  a;
   print_string "]\n")
  
let show_weight_p v p =
  let (id,_) = Hashtbl.find modeltab p in
  let name_of_weight0 = if id=0 then "weight" else ("weight_"^(string_of_int (id *3))) in
  let name_of_weight1 = "weight_"^(string_of_int (1+ id*3)) in
  let name_of_weight2 = "weight_"^(string_of_int (2+ id*3)) in
  let name_of_bias = if id=0 then "bias" else ("weight_"^(string_of_int id)) in
  let w0 = Tensor.to_float2_exn (Base.List.Assoc.find_exn v name_of_weight0 ~equal:Base.String.(=)) in
  let w1 = Base.List.Assoc.find_exn v name_of_weight1 ~equal:Base.String.(=)  in
  let w2 = Base.List.Assoc.find_exn v name_of_weight2 ~equal:Base.String.(=)  in
  let w12t = Tensor.(mm (abs w2) (abs w1) ) in
  let w12 = Tensor.to_float2_exn w12t in
  let ba = if !poly then
            Tensor.to_float1_exn (List.assoc name_of_bias v)
          else
            Array.make !hidden_nodes 0.
  in
  let _ = if !poly then
            let a= Base.Array.map (Tensor.to_float2_exn (List.assoc "exponent" v))
                      ~f:(fun earray ->
                           Base.Array.map earray ~f:(fun e -> Float.to_int(Float.round(e))))
            in Hashtbl.replace exptab p a
  in
  let rvec = Base.Array.zip_exn (Base.Array.zip_exn w0 ba) w12.(0) in
  let _ = Array.sort(fun (_,w1) (_, w2) -> Float.compare (Float.abs w2) (Float.abs w1))  rvec in
  (Qualifiers.extract_qualifiers p rvec;
   print_weight_aux rvec)

let show_weight vs =
  let v = Var_store.all_vars vs in
   Hashtbl.iter (fun p _ -> show_weight_p v p) modeltab


(** obsolete function for debugging
let show_prediction() =
  Hashtbl.iter
    (fun p datatensor ->
      print_string ("Predicate "^p^":\n");
      let (_,model) = Hashtbl.find modeltab p in
      let labels = Tensor.to_float2_exn (model datatensor) in
      let x = Tensor.to_float2_exn datatensor in
      let xl = Base.Array.zip_exn x labels in
      Array.iter
        (fun (x,l) ->
          print_floatarray x;
          print_string ": ";
          print_floatarray l;
          print_string "\n")
        xl)
    datatab
 **)
  
let accuracy_pos predictions =
  let pc = !positives in
  let n = List.length pc in
    let correct =
    List.fold_left
      (fun m atom -> if Tensor.to_float0_exn (get_prediction predictions atom)>0.6
                  then m+1 else m)
      0
      pc
    in (n, correct)
(*         
         (Float.of_int correct) /. (Float.of_int n)
 *)
     
let accuracy_neg predictions =
  let nc = !negatives in
  let n = List.length nc in
    let correct =
    List.fold_left
      (fun m atom -> if Tensor.to_float0_exn (get_prediction predictions atom)<0.4
                  then m+1 else m)
      0
      nc
    in (n, correct)

let accuracy_imp predictions =
  let ic = !implications in
  let n = List.length ic in
    let correct =
    List.fold_left
      (fun m (nl,pl) ->
        if List.exists (fun a -> Tensor.to_float0_exn (get_prediction predictions a)<0.4) nl
           || List.exists (fun a -> Tensor.to_float0_exn (get_prediction predictions a)>0.6) pl
        then m+1 else m)
      0
      ic
    in (n, correct)

exception Done     
let fit epochs optm =
  try
    for i=0 to epochs do
      let (loss,prediction) = step optm in
      if i mod 1000 = 0 then
        (Stdio.printf "epochs: %d\n" i;
         last_loss := Tensor.float_value loss;
         Stdio.printf "loss: %f\n" !last_loss;
         let (n1,c1) = accuracy_pos prediction in
         let (n2,c2) = accuracy_neg prediction in
         let (n3,c3) = accuracy_imp prediction in
         Stdio.printf "accuracy: %d/%d (pos), %d/%d (neg), %d/%d (imp)\n" c1 n1 c2 n2 c3 n3;
         flush stdout;
         last_miss := (n1+n2+n3)-(c1+c2+c3);
         if !last_miss=0 && !last_loss < !loss_threshold then raise Done
        )
    done
  with Done -> ()

let learn epochs =
  let _ = init() in
(*  
  let vs = Var_store.create ~name:"parameters" ~device:!Global.device () in
 *)
  let vs = Var_store.create ~name:"parameters" ~device:!Global.device () in
  let _ = (global_vs := vs) in
  let _ = prepare_models vs in
  let optm = if !optimizer = 0 then Optimizer.adam vs ~learning_rate:!learning_rate
           else if !optimizer=1 then Optimizer.sgd vs ~learning_rate:!learning_rate
             else Optimizer.rmsprop vs ~learning_rate:!learning_rate
  in
  (fit epochs optm;
   show_weight vs;
   if !last_miss=0 then
     try (Qualifiers.construct_predicates();
          Qualifiers.print_predicates())
     with Qualifiers.FAIL _ ->
       (print_string "Failed to find predicates, but the following qualifiers may be useful\n";
        Qualifiers.print_qualifiers())
   else
     (print_string "Learning has not completed, but the following qualifiers may be useful\n";
      Qualifiers.print_qualifiers())
  )

let rec read_options index =
  match Sys.argv.(index) with
    "-epochs" -> (epochs := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-nodes" -> (hidden_nodes := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-loss" -> (lossfun := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-mod2" -> (mod2 := true; read_options (index+1))
  | "-poly" -> (poly := true; read_options (index+1))
  | "-opt" -> (optimizer := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-rate" -> (learning_rate := float_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-bias" -> (standard_biases := [Float.of_int(int_of_string(Sys.argv.(index+1)))]; read_options (index+2))
  | _ -> index
  

let main() =
  let open Format in
  printf "cuda: %b@\n" (Cuda.is_available ());
  (* Global.device := Device.cuda_if_available (); *)
  Global.device := Device.Cpu;
    let index =
      try
        read_options 1
      with Invalid_argument _ -> (print_string "Invalid options\n"; exit(-1))
    in
    let filename = Sys.argv.(index) in
    (Dataloader.input_alldata filename signatures constraints;
     Random.self_init();
     learn !epochs);;

    
if !Sys.interactive then
  ()
else
  main();;
    
(*      
let w = List.assoc "weight_1" (Var_store.all_vars vs)
let loss = Tensor.select x 0 0
let _ = Tensor.backward loss
let _ = Tensor.(grad w)
let _ = Tensor.(no_grad (fun () -> w -= grad w * f 0.01));;
 *)
