(* learning for CHC with multiple predicates *)
open Torch
open Global                
                 
let data_to_floatlist dl =
    List.fold_right
      (fun d (fl, bl) ->
        let ff = if !hiddenfun=0 then 0.0 else -1.0 in
        match d with
          Float(x) -> (x::fl, bl)
        | Int(n) ->
           if !mod2 then ((Float.of_int n)::fl,
                          if absmod n 2=0 then 1.0::ff::bl else ff::1.0::bl)
           else ((Float.of_int n)::fl, bl)
        | Bool(b) -> (fl, if b then 1.0::ff::bl else ff::1.0::bl)
      )
      dl
      ([],[])

let print_rawdatatab() =
  Hashtbl.iter (fun p tab ->
      print_string (p^":\n");
      Hashtbl.iter (fun _ id ->
          let args = Hashtbl.find id2rawdatatab (p,id) in
          Dataloader.output_atom stdout (p, args);
          match id with
            P(n) -> Printf.printf " with id: P(%d)\n" n
          | N(n) -> Printf.printf " with id: N(%d)\n" n
          | I(n) -> Printf.printf " with id: I(%d)\n" n
        ) tab) rawdatatab

let create_matrix p dl =
  let (_,_,(columnsize,_,_)) = Hashtbl.find datatab p in
  let rowsize = List.length dl in
  let a = Array.init rowsize
            (fun i ->
              let id = List.nth dl i in
              let d = match id with
                  I(j) -> j
                | _ -> (print_string ("Unexpected atom:\n"^(string_of_atom (p, id))); assert false)
              in
              Array.init columnsize (fun j -> if d=j then 1.0 else 0.0)) in
  Tensor.of_float2 a
  
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
       let (pdatatensor, pbdatatensor) =
         let (l1, l2) =
           List.fold_left
             (fun (fll, bll) l ->
               let (fl,bl) = data_to_floatlist l in
               (Array.of_list(fl@biases)::fll, Array.of_list(bl)::bll))
             ([], [])
             pdata
         in (Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l1 [])),
             Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l2 [])))
       in
       let (ndatatensor, nbdatatensor) =
         let (l1, l2) =
           List.fold_left
             (fun (fll, bll) l ->
               let (fl,bl) = data_to_floatlist l in
               (Array.of_list(fl@biases)::fll, Array.of_list(bl)::bll))
             ([], [])
             ndata
         in (Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l1 [])),
             Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l2 [])))
       in
       let (idatatensor, ibdatatensor) =
         let (l1, l2) =
           List.fold_left
             (fun (fll, bll) l ->
               let (fl,bl) = data_to_floatlist l in
               (Array.of_list(fl@biases)::fll, Array.of_list(bl)::bll))
             ([], [])
             idata
         in (Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l1 [])),
             Tensor.of_float2 ~device:!Global.device (Array.of_list (List.rev_append l2 [])))
       in
       let psize = Array.length pdataarray in
       let nsize = Array.length ndataarray in
       let isize = Array.length idataarray in
       (Hashtbl.add datatab p ((psize, pdatatensor, pbdatatensor),
                               (nsize, ndatatensor, nbdatatensor),
                               (isize, idatatensor, ibdatatensor)));
       (* assign ids to natoms *)
        for i=0 to psize-1 do
          let y = pdataarray.(i) in
          Hashtbl.replace tab y (P(i));
          Hashtbl.add id2rawdatatab (p, P(i)) y
        done;
        for i=0 to nsize-1 do
          let y = ndataarray.(i) in
          Hashtbl.replace tab y (N(i));
          Hashtbl.add id2rawdatatab (p, N(i)) y
        done;
        for i=0 to isize-1 do
          let y = idataarray.(i) in
          Hashtbl.replace tab y (I(i));
          Hashtbl.add id2rawdatatab (p, I(i)) y
        done
     )
     rawdatatab;
   (* print_rawdatatab(); *)
   positives := List.map convert_atom !posc;
   negatives := List.map convert_atom !negc;
   implications := List.map
                     (fun (nl,pl) -> (List.map convert_atom nl, List.map convert_atom pl))
                     !impc;
   let imphash = Hashtbl.create 1024 in
   let lookup_imphash (nl,pl) =
     try Hashtbl.find imphash (nl,pl)
     with Not_found ->
       List.init (List.length nl + List.length pl) (fun _ -> [])
   in 
   List.iter
     (fun (nl,pl) ->
       let (nl',pl') = (List.map fst nl, List.map fst pl) in
       let dl = lookup_imphash (nl',pl') in
       let dl' =
          List.map (fun ((_,id), idl) -> id::idl) (List.combine (nl@pl) dl)
       in
       Hashtbl.replace imphash (nl',pl') dl')
     !implications;
   let filter = ref [] in
   Hashtbl.iter 
     (fun (nl,pl) dl ->
       let n = List.length (List.hd dl) in
       if n >= 5
       then
         let (nml, dl') =
           List.fold_left
             (fun (nml0,dl0) p ->
               let m = create_matrix p (List.hd dl0) in
               ((p,m)::nml0, List.tl dl0))
             ([], dl)
             nl
         in
         let (pml,_) =
           List.fold_left
             (fun (pml0,dl0) p ->
               let m = create_matrix p (List.hd dl0) in
               ((p,m)::pml0, List.tl dl0))
             ([], dl')
             pl
         in
         implications_packed := (n,nml,pml):: !implications_packed;
         filter := (nl,pl)::!filter
     )
     imphash;
   implications_rest :=
     List.filter
       (fun (nl,pl) -> 
         let (nl',pl') = (List.map fst nl, List.map fst pl) in
         not(List.mem (nl',pl') !filter))
       !implications
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
                 if List.mem a pl then
                   imp
                 else
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
                 if List.mem a nl then
                   imp
                 else
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
   Hashtbl.clear qualtab;
   Hashtbl.clear predtab;
   Hashtbl.clear modeltab;
   propagate();
   (*   Dataloader.output_constr stdout (!posc,!negc,!impc);  *)
   create_datahash();
   )

let hidden_activation () = match !hiddenfun with
  | 0 -> Nn.Sigmoid
  | 1 -> Nn.Tanh
  | 2 -> Nn.Relu
  | 3 -> Nn.Leaky_relu
  | _ -> assert false

let out_activation () = match !outfun with
  | 0 -> Nn.Sigmoid
  | 1 -> Nn.Sigmoid
  | 2 -> Nn.Relu
  | 3 -> Nn.Leaky_relu
  | _ -> assert false
       
let linear1fun nodes vs =
  let l1 = Layer.linear vs !hidden_nodes ~activation:(hidden_activation ()) ~use_bias:false ~input_dim:nodes
  in
     Layer.forward l1

let linear1funinit output_dim ~w_init ~input_dim vs =
  let l1 = Layer.linear vs output_dim ~w_init ~activation:(hidden_activation ()) ~use_bias:false ~input_dim
  in
     Layer.forward l1
   
let linear1 nodes vs =
  Layer.linear vs !hidden_nodes ~activation:(hidden_activation ()) ~use_bias:false ~input_dim:nodes 

let poly1 nodes vs =  
  let l11 = MyLayer.poly vs (2*nodes) ~input_dim:nodes in
  let l12 = Layer.linear vs !hidden_nodes ~activation:(hidden_activation ()) ~input_dim:(2*nodes) in 
  fun xs -> l11 xs |> Layer.forward l12
  
let linear2 bnodes vs =
  if !layers=2 then 
    if !cnf || !dnf then
      MyLayer.l_nor vs 1 ~input_dim:(!hidden_nodes + bnodes)
    else
      Layer.forward
        (Layer.linear vs 1 ~activation:(out_activation()) ~use_bias:true ~input_dim:(!hidden_nodes + bnodes))
  else
    if !cnf || !dnf then
      MyLayer.l_nor vs !hidden_nodes2 ~input_dim:(!hidden_nodes + bnodes)
    else
      Layer.forward
        (*        (Layer.linear vs !hidden_nodes2 ~activation:Leaky_relu ~use_bias:true ~input_dim:(!hidden_nodes + bnodes)) *)
        (Layer.linear vs !hidden_nodes2 ~activation:(hidden_activation ()) ~use_bias:true ~input_dim:(!hidden_nodes + bnodes))
let linear3 vs =
  if !cnf then
    MyLayer.l_nor vs 1 ~input_dim:(!hidden_nodes2)
  else if !dnf then
    MyLayer.l_or vs 1 ~input_dim:(!hidden_nodes2)
  else
    Layer.forward
      (Layer.linear vs 1 ~activation:(out_activation()) ~use_bias:true ~input_dim:(!hidden_nodes2))
  
let model layer1 layer2 xs =
  (*  Layer.forward layer1 xs |> Layer.forward layer2*)
   layer1 xs |> layer2

let model3 layer1 layer2 layer3 xs =
  (*  Layer.forward layer1 xs |> Layer.forward layer2*)
   layer1 xs |> layer2 |> layer3
  
let prepare_models vs =
  let model_id = ref 0 in
  Hashtbl.iter
    (fun p (_,ms, bms) ->
      let nodes = (List.length ms)+(List.length (Hashtbl.find biastab p)) in
      let bnodes = (List.length bms) in
      let layer1 = if !poly then
                     poly1 nodes vs
                   else
                     linear1fun nodes vs
      in
      let layer2 = linear2 bnodes vs in
      let layer12 =
        fun xs bs ->
        let os = layer1 xs in
        layer2 Tensor.(cat [bs;os] ~dim:1)
      in
      let model_p = if !layers=2 then
                      layer12
                    else
                      let layer3 = linear3 vs in
                      fun xs bs -> layer3 (layer12 xs bs)
      in
      Hashtbl.add modeltab p (!model_id, model_p);
      model_id := 1+ !model_id)
    signatures
  
let reset vs =
  let vs' = Var_store.create ~name:"tmp" ~device:!Global.device () in
 ( Hashtbl.iter
    (fun p (_, ms, bms) ->
      let nodes = (List.length ms)+(List.length (Hashtbl.find biastab p)) in
      let bnodes = (List.length bms) in
      let dummy2 = if !poly then
                     poly1 nodes vs'
                   else
                     linear1fun nodes vs'
      in
      let _ = fun x -> dummy2 x in
      let dummy = linear2 bnodes vs' in
      let dummy3 = if !layers=2 then dummy else linear3 vs' in
      let _ = fun x -> dummy3 x in ())
    signatures;
  Var_store.copy ~src:vs' ~dst:vs)
 (*;
  print_string "weights have been reset to:\n";
  show_weight())
  *)

let name_of_weight id i =
  if id=0 && i=0 then "weight"
  else ("weight_"^(string_of_int (i + id* !layers)))

let rec max_index_of_list_aux l ind i a =
  match l with
    [] -> (i,a)
  | x::l' ->
     if x>a then max_index_of_list_aux l' (ind+1) ind x
     else max_index_of_list_aux l' (ind+1) i a
let max_index_of_list l =
  match l with
    [] -> assert false
  | x::l' -> max_index_of_list_aux l' 0 0 x

  
let loss_pos predictions =
  Hashtbl.fold
    (fun _ ((psize,ppre),_,_) loss ->
      if psize=0 then loss
      else if !lossfun<=0 then Tensor.(loss - sum (log (max ppre (f 0.00000001))))
      else if !lossfun=1 then Tensor.(loss + sum (f 1. - ppre))
      else Tensor.(loss + sum ((f 1. - ppre)*(f 1. - ppre)))
    )
    predictions
  (Tensor.f 0.)
let loss_neg predictions =
  Hashtbl.fold
    (fun _ (_,(nsize,npre),_) loss ->
      if nsize=0 then loss
      else if !lossfun<=0 then Tensor.(loss - sum (log (max (f 1.00000 - npre) (f 0.00000001))))
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

let loss_imp_rest predictions =
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
        let len = List.length nl + List.length pl in
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
                  let e = Tensor.f (2. /. (float_of_int len)) in
                  let z0 = Tensor.(exp2 ((log2 z0) * e)) in
                  Tensor.(log (f 1. - log (max (f 1. - z0) (f 0.000001))))
                else
                  z0
        in
        Tensor.(s+z))
    (Tensor.f 0.)
    !implications_rest



let loss_imp_packed predictions =
  List.fold_left
    (fun s (n, nml, pml) ->
      if !lossfun< -1 then
        let a = Array.make n 1.0 in
        let x = Tensor.of_float1 a in
        let y0 = List.fold_left
                   (fun v (p,m) ->
                     let (_, _, (_,d)) = Hashtbl.find predictions p in
                     let v1 = Tensor.(mm m d) in
                     Tensor.(v * (- log (max v1 (f 0.000001)))))
                   x
                   pml
        in
        let y = List.fold_left
                  (fun v (p,m) ->
                     let (_, _, (_,d)) = Hashtbl.find predictions p in
                     let v1 = Tensor.(mm m d) in
                     Tensor.(v * (- log (max (f 1. - v1 ) (f 0.0000001)))))
                  y0
                  nml
        in
          Tensor.(s+sum y)
      else
        let len = List.length nml + List.length pml in
        let a = Array.make n 1.0 in
        let x = Tensor.of_float1 a in
        let y = List.fold_left
                (fun v (p,m) ->
                  let (_, _, (_,d)) = Hashtbl.find predictions p in
                  let v1 = Tensor.(mm m d) in
                    Tensor.(v * (f 1. - v1 ))
                )
                x
                pml
        in
        let z0 = List.fold_left
                (fun v (p,m) ->
                  let (_, _, (_,d)) = Hashtbl.find predictions p in
                  let v1 = Tensor.(mm m d) in
                  Tensor.(v * v1)
                )
                y
                nml
        in
        let z = if !lossfun=0 then Tensor.(-log (max (f 1. - z0) (f 0.000001)))
                else if !lossfun=3 then Tensor.(z0 * z0)
                else if !lossfun= -1 then
                  let e = Tensor.f (2. /. (float_of_int len)) in
                  let z0 = Tensor.(exp2 ((log2 z0) * e)) in
                  Tensor.(log (f 1. - log (max (f 1. - z0) (f 0.000001))))
                else
                  z0
        in
        Tensor.(s+sum z))
    (Tensor.f 0.)
    !implications_packed
  
(**  
let rec loss_bool_aux x from upto acc =
  if from>upto then acc
  else
    let y = Tensor.select x 0 from in
    let w = Tensor.(y * y * (y - f 1.) * (y - f 1.)) in
    loss_bool_aux x (from+1) upto Tensor.(acc + w)
  
let loss_bool x = loss_bool_aux x 0 (!datasize - 1) (Tensor.f 0.)
 **)

let regularizer() =
  let num_of_preds = Hashtbl.length modeltab in
  let names_of_weights1 =
    "weight"::(List.init (num_of_preds - 1) (fun x->"weight_"^(string_of_int(x* !layers))))
  in
  let names_of_weights2 =
    "weight"::(List.init (num_of_preds - 1) (fun x->"weight_"^(string_of_int(x* !layers + 1))))
  in
  let lam1 = Tensor.(f !regularization_factor) in
  let lam2 = Tensor.(f !regularization_factor2) in
  let v = Var_store.all_vars !global_vs in
  let reg1 = 
    List.fold_left
      (fun x wn ->
        let t = List.assoc wn v in
        Tensor.(x + sum (abs t))
      )
      Tensor.(f 0.)
      names_of_weights1
  in
  let reg2 = 
    List.fold_left
      (fun x wn ->
        let t = List.assoc wn v in
        Tensor.(x + sum (abs t))
      )
      Tensor.(f 0.)
      names_of_weights2
  in
    Tensor.(lam1 * reg1 + lam2 * reg2)
  
let loss_all x =
  if !num_of_constraints=0 then Tensor.(f 0.)
  else if !regularization_factor > 0.
  then
    Tensor.(((f !pos_w) * loss_pos x + loss_neg x  + (f !pos_i) * (loss_imp_packed x + loss_imp_rest x)) / (f (float_of_int !num_of_constraints)) + regularizer())
  else
    Tensor.(((f !pos_w) * loss_pos x + loss_neg x  + (f !pos_i) * (loss_imp_packed x + loss_imp_rest x)) / (f (float_of_int !num_of_constraints)));;

let apply_model() =
  let predictions = Hashtbl.create 16 in
  let dummy_tensor = Tensor.of_float2 ~device:!Global.device [|[||]|]  in
  (last_predictions := predictions;
   Hashtbl.iter
    (fun p ((psize, pdata, pbdata),(nsize,ndata, nbdata),(isize,idata, ibdata)) ->
      let (_,model_p) = Hashtbl.find modeltab p in
      let ppre = if psize>0 then model_p pdata pbdata else dummy_tensor in
      let npre = if nsize>0 then model_p ndata nbdata else dummy_tensor in
      let ipre = if isize>0 then model_p idata ibdata else dummy_tensor in
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

let show_tensor s t =
  print_string (s^":\n");
  let w = Tensor.to_float2_exn t in
  Array.iter print_floatarray w

let show_tensor1 s t =
  print_string (s^":\n");
  let w = Tensor.to_float1_exn t in
  print_floatarray w

let print_data size idata bdata =
  print_string ("size: "^(string_of_int size)^"\n");
  show_tensor "Int" idata;
  show_tensor "Bool" bdata
  
let print_current_data() =
  Hashtbl.iter
    (fun p ((psize, pdata, pbdata),(nsize,ndata, nbdata),(isize,idata,ibdata)) ->
      let ((_,ppre),(_,npre),(_,ipre)) = Hashtbl.find !last_predictions p in
      let _ = print_string ("Data for predicate "^p^"\n") in
      let _ = print_string "Positive data\n" in
      let _ = print_data psize pdata pbdata in
      let _ = if psize>0 then Util.print_floatarray (Tensor.to_float1_exn ppre) in
      let _ = print_string "Negative data\n" in
      let _ = print_data nsize ndata nbdata in
      let _ = if nsize>0 then Util.print_floatarray (Tensor.to_float1_exn npre) in
      let _ = print_string "Implication data\n" in
      let _ = print_data isize idata ibdata in
      let _ = show_tensor "" ipre in ()
    )
    datatab
  
let show_weight_p v p =
  let (id,_) = Hashtbl.find modeltab p in
  let name_of_weight0 = if id=0 then "weight" else ("weight_"^(string_of_int (id* !layers))) in
  let name_of_weight1 = "weight_"^(string_of_int (1+ id* !layers)) in
  let name_of_bias0 = if id=0 then "bias" else ("bias_"^(string_of_int (id* (!layers -1)))) in
  (*
  let name_of_bias1 = "bias_"^(string_of_int (id* (!layers -1)+1)) in
   *)
  let t0 = Base.List.Assoc.find_exn v name_of_weight0 ~equal:Base.String.(=) in
  let w0 = Tensor.to_float2_exn t0 in
  let w1 = Base.List.Assoc.find_exn v name_of_weight1 ~equal:Base.String.(=)  in
  (*  let b0 = Base.List.Assoc.find_exn v name_of_bias0 ~equal:Base.String.(=)  in*)
  (*  let b1 = Base.List.Assoc.find_exn v name_of_bias1 ~equal:Base.String.(=)  in*)
  let w12 = if !layers=2 then
              (show_tensor name_of_weight0 t0;
               show_tensor name_of_weight1 w1;
               Tensor.to_float2_exn w1)
            else
              let name_of_weight2 = "weight_"^(string_of_int (2+ id*3)) in
              let w2 = Base.List.Assoc.find_exn v name_of_weight2 ~equal:Base.String.(=)  in
              let w12t = Tensor.(mm (abs w2) (abs w1) ) in
              (show_tensor name_of_weight0 t0;
               show_tensor name_of_weight1 w1;
               show_tensor name_of_weight2 w2;
               (*show_tensor1 name_of_bias0 b0; *)
               (*               show_tensor1 name_of_bias1 b1; *)
                Tensor.to_float2_exn w12t)
  in
  let ba = if !poly then
            Tensor.to_float1_exn (List.assoc name_of_bias0 v)
          else
            Array.make (Array.length w0) 0.
  in
  let _ = if !poly then
            let a= Base.Array.map (Tensor.to_float2_exn (List.assoc "exponent" v))
                      ~f:(fun earray ->
                           Base.Array.map earray ~f:(fun e -> Float.to_int(Float.round(e))))
            in Hashtbl.replace exptab p a
  in
  let w12' = Array.init (Array.length w0) (fun i -> w12.(0).(i)) in
  let rvec = Base.Array.zip_exn (Base.Array.zip_exn w0 ba) w12' in
  let _ = Array.sort(fun (_,w1) (_, w2) -> Float.compare (Float.abs w2) (Float.abs w1))  rvec in
  (Qualifiers.extract_qualifiers p rvec;
   print_weight_aux rvec)

let show_weight vs =
  (*  let _ = print_current_data() in *)
  let v = Var_store.all_vars vs in
   Hashtbl.iter (fun p _ -> show_weight_p v p) modeltab

  
let distill vs =
  assert(!layers=3 && (!dnf || !cnf));
  (* for the moment, distillation is supported only for cnf or dnf mode *)
  let vs' = Var_store.create ~name:"parameters" ~device:!Global.device () in
  let vars = Var_store.all_vars vs in
  let updated = ref false in
  ( Hashtbl.iter
    (fun p (_, monomials, bmonomials) ->
      let nodes = (List.length monomials)+(List.length (Hashtbl.find biastab p)) in
      let bnodes = (List.length bmonomials) in
      let (id,_) = Hashtbl.find modeltab p in
      let w0 = List.assoc (name_of_weight id 0) vars in
      let w1 = List.assoc (name_of_weight id 1) vars in
      let w2 = List.assoc (name_of_weight id 2) vars in
      let w2l = Array.to_list((Tensor.to_float2_exn w2).(0)) in
      let w2l' = List.filter (fun w -> w>2.0) w2l in
      let (w0',w1',w2') =
        if List.length w2l = List.length w2l' then (w0,w1,w2)
        else
          let _ = updated := true in
          let (w2l', w2flag) =
            if w2l'=[] then
              let (i,a) = max_index_of_list w2l in
              let l = List.init (List.length w2l) (fun x->x=i) in
              ([a], l)
            else (w2l', List.map  (fun w -> w>2.0) w2l) 
          in
          let w2' = Tensor.of_float2 ([| Array.of_list w2l' |]) in
          let w1l = Array.to_list (Tensor.to_float2_exn w1) in
          let w1l' = List.map fst (List.filter (fun (_,b)-> b) (List.combine w1l w2flag)) in
          let w11 = List.hd w1l' in
          let w1l'' = List.tl w1l' in
          let w1flag =
            List.fold_left
              (fun fl a ->
                let l = Array.to_list a in
                let fl' = List.map (fun w->w>2.0) l in
                List.map (fun (b1,b2)->b1||b2) (List.combine fl fl')
              )
              (List.map (fun w->w>2.0) (Array.to_list w11))
              w1l''
          in
          let w1l' =
            List.map
              (fun a ->
                let l = Array.to_list a in
                let ll = List.combine l w1flag in
                Array.of_list (List.map (fun (x,_) -> if x>2.0 then x else 0.0) (List.filter snd ll))
              )
              w1l'
          in    
          let w1' = Tensor.of_float2 (Array.of_list w1l') in
          let w0l = Array.to_list (Tensor.to_float2_exn w0) in
          let w0l' = List.map fst (List.filter (fun (_,b)-> b) (List.combine w0l w1flag)) in
          let w0l' = List.map (fun a -> Array.map (fun w-> 2. *. w) a) w0l' in (* sharpen sigmoid *)
          let w0' = Tensor.of_float2 (Array.of_list w0l') in
          (w0',w1',w2')
      in
      let (dim1,dim2) =
        let shape = Tensor.size w1' in (List.hd (List.tl shape), List.hd shape)
      in
      (* to be fixed *)
      let layer1 = linear1funinit (dim1-bnodes) vs' ~w_init:(Copy(w0')) ~input_dim:nodes in
      let layer2 = MyLayer.l_nor vs' dim2 ~w_init:(Copy(w1')) ~input_dim:dim1 in 
      let layer3 = if !cnf then
                     MyLayer.l_nor vs' 1 ~w_init:(Copy(w2')) ~input_dim:dim2
                   else
                     MyLayer.l_or vs' 1 ~w_init:(Copy(w2')) ~input_dim:dim2
      in
      let model_p =
        fun xs bs ->
        let os1 = layer1 xs in
        let os2 = layer2 Tensor.(cat [bs;os1] ~dim:1) in
        layer3 os2
      in
      Hashtbl.replace modeltab p (id, model_p)
    )
    signatures;
    global_vs := vs';
    if !updated then
      (print_string "Weights of distilled NN\n";
       show_weight vs');
    !updated
  )
  

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

let get_statistics() =
  let prediction = apply_model() in
  let loss = loss_all prediction in
  (last_loss := Tensor.float_value loss;
   Stdio.printf "loss: %f\n" !last_loss;
   let (n1,c1) = accuracy_pos prediction in
   let (n2,c2) = accuracy_neg prediction in
   let (n3,c3) = accuracy_imp prediction in
   (Stdio.printf "accuracy: %d/%d (pos), %d/%d (neg), %d/%d (imp)\n" c1 n1 c2 n2 c3 n3;
    last_imp_miss := n3-c3)
  )

let report_sig() =
  let num_pred = ref 0 in
  let arity = ref 0 in
  Hashtbl.iter (fun _ (kinds,_,_) ->
      num_pred := !num_pred + 1;
      arity := max !arity (List.length kinds))
    signatures;
  Stdio.printf "max_arity: %d, #pred: %d\n" !arity !num_pred
  
     
exception Done     
let rec fit numepochs optm =
  try
    for i=0 to numepochs do
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
         last_imp_miss := n3-c3;
         if !last_miss=0 && !cut_training && !last_loss < 0.01 *. !loss_threshold
         then raise Done (* finish if the current loss is well below the threshold *)
        )
    done;
    if !last_miss=0 && !last_loss < !loss_threshold then true
    else if !retry>0 then
         (print_string "Learning has not completed: retrying\n";
          retry := !retry - 1;
          let vs = !global_vs in
          reset vs;
          let optm = if !optimizer = 0 then Optimizer.adam vs ~learning_rate:!learning_rate
                     else if !optimizer=1 then Optimizer.sgd vs ~learning_rate:!learning_rate
                     else Optimizer.rmsprop vs ~learning_rate:!learning_rate
          in
          fit !epochs optm
         )
    else false
  with Done -> true

let double_datatab() =
  Hashtbl.iter (fun _ ((_,ptensor,_),(_,ntensor,_),(_,itensor,_)) ->
      Tensor.(ptensor *= f 2.0);
      Tensor.(ntensor *= f 2.0);
      Tensor.(itensor *= f 2.0))
    datatab
             
let rec learnsub numepochs vs =
  let optm = if !optimizer = 0 then Optimizer.adam vs ~learning_rate:!learning_rate
           else if !optimizer=1 then Optimizer.sgd vs ~learning_rate:!learning_rate
             else Optimizer.rmsprop vs ~learning_rate:!learning_rate
  in 
  (let success = match !load with
       Some(file) ->
        let ckptfile=file^".ckpt" in
        (Serialize.load_multi_ ~named_tensors:(Var_store.all_vars vs) ~filename:ckptfile;
         get_statistics();
         true)
     | None -> fit numepochs optm
   in
   let _ = match !save with
       Some(file) ->
        let ckptfile=file^".ckpt" in
        Serialize.save_multi ~named_tensors:(Var_store.all_vars vs) ~filename:ckptfile
    | None -> ()
   in
   show_weight vs;
   print_string "Qualifiers:\n";
   Qualifiers.print_qualifiers();
   (try
      (
        Qualifiers.construct_predicates();
        print_string "Predicates found:\n";
        Qualifiers.print_predicates()
      )
   with Qualifiers.FAIL _ ->
   if success then
     (print_string "Failed to find predicates\n";
      if !retry>0 && !distflag then (* try once more after re-scaling data *)
        (load := None; retry := 0;
        Hashtbl.clear qualtab;
        Hashtbl.clear predtab;
        double_datatab();
        learnsub numepochs !global_vs)
      else if !outsmt then Qualifiers.output_qual2smt()
     )
   else
     (print_string "Learning has not completed\n";
     if !outsmt then Qualifiers.output_qual2smt()));
   if !layers=3 && (!cnf || !dnf) && !distflag && success then
     if distill vs then
       (print_string "distilling\n";
        load := None; retry := 0;
        Hashtbl.clear qualtab;
        Hashtbl.clear predtab;
        learnsub numepochs !global_vs)
     else ()
  )
             
let learn numepochs =
  let _ = init() in
(*  
  let vs = Var_store.create ~name:"parameters" ~device:!Global.device () in
 *)
  let vs = Var_store.create ~name:"parameters" ~device:!Global.device () in
  let _ = (global_vs := vs) in
  let _ = prepare_models vs in
  learnsub numepochs vs
       

let print_options() =
  Printf.printf "Options:\n";
  Printf.printf "  -epochs <num>: set the number of epochs to <num>\n";
  Printf.printf "  -4l: set the number of layers to 4 (default: 3)\n";
  Printf.printf "  -nor: use 'nor-nor' layers for the 3rd and 4th layers\n";
  Printf.printf "  -cnf: use 'nor-nor' layers for the 3rd and 4th layers\n";
  Printf.printf "  -dnf: use 'nor-or' layers for the 3rd and 4th layers\n";
  Printf.printf "  -nodes <num>: set the number of hidden nodes in the second layer to <num> (default: 32)\n";
  Printf.printf "  -nodes2 <num>: set the number of hidden nodes in the third layer to <num> (default: 4)\n";
  Printf.printf "  -qce <num>: set the constant error bound for qualifiers to <num> (default: 1)\n";
  Printf.printf "  -loss <num>: set the loss function  (default: 0)\n";
  Printf.printf "               0: log\n";
  Printf.printf "               1: linear\n";
  Printf.printf "               2: square\n";
  Printf.printf "  -mod2: enable the mod2 operation\n";
  Printf.printf "  -threshold <float num>: stop training when the accuracy is 100%% and the loss becomes smaller than <float num> (default 1e-4)\n";
  Printf.printf "  -nocut: repeat epochs even if the loss becomes below the threshold\n";
  Printf.printf "  -ratio <float num>: set the ratio of hidden nodes considered based on their priorities (default: 1.0)\n";
  Printf.printf "  -abias <num>: add the constant bias input <num>\n";
  Printf.printf "  -bias <num>: replace the constant bias input with <num> (default: 1)\n";
  Printf.printf "  -retry <num>: the number of retries when learning fails (default: 3)\n";
  Printf.printf "  -save <filename>: save the trained NN in <filename>.ckpt\n";
  Printf.printf "  -load <filename>: load the trained NN from <filename>.ckpt\n";
  Printf.printf "  -reg <float num1> <float num2>: add L1 regularization with the coefficients <num1> for the weights in the first layer and <num2> for those in the second layer\n"
  
  
let rec read_options index =
  match Sys.argv.(index) with
    "-epochs" -> (epochs := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-distill" -> (distflag := true; read_options (index+1))
  | "-nor" -> (cnf := true; read_options (index+1))
  | "-cnf" -> (cnf := true; layers := 3; hiddenfun := 0; read_options (index+1))
  | "-dnf" -> (dnf := true; layers := 3; hiddenfun := 0; read_options (index+1))
  | "-smt" -> (outsmt := true; smtfile := Sys.argv.(index+1); read_options (index+2))
  | "-nodes" -> (hidden_nodes := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-nodes2" -> (hidden_nodes2 := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-qce" -> (qcerror := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-loss" -> (lossfun := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-lossimp" -> (pos_i := float_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-mod2" -> (mod2 := true; read_options (index+1))
  | "-nocut" -> (cut_training := false; read_options (index+1))
  | "-4l" -> (layers := 3; read_options (index+1))
  | "-poly" -> (poly := true; read_options (index+1))
  | "-opt" -> (optimizer := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-logqual" -> (log_qual := Some(Sys.argv.(index+1)); read_options (index+2))
  | "-save" -> (save := Some(Sys.argv.(index+1)); read_options (index+2))
  | "-load" -> (load := Some(Sys.argv.(index+1)); read_options (index+2))
  | "-rate" -> (learning_rate := float_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-reg" -> (regularization_factor := float_of_string(Sys.argv.(index+1));
               regularization_factor2 := float_of_string(Sys.argv.(index+2));
               read_options (index+3))
  | "-threshold" -> (loss_threshold := float_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-ratio" -> (ratio_extraction := float_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-retry" -> (retry := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-bias" -> (standard_biases := [Float.of_int(int_of_string(Sys.argv.(index+1)))]; read_options (index+2))
  | "-abias" -> (standard_biases := Float.of_int(int_of_string(Sys.argv.(index+1)))::!standard_biases; read_options (index+2))
  | "-hiddenfun" -> (hiddenfun := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-outfun" -> (outfun := int_of_string(Sys.argv.(index+1));
                  if !outfun>1 then lossfun := 2; read_options (index+2))
  | "--help" -> (print_options(); exit 0)
  | "-noimp" -> (noimp := true; read_options (index+1))
  | "-cutimp" -> (numimp := 100; read_options (index+1))
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
     if !noimp then impc := [];
     Random.self_init();
     report_sig();
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
