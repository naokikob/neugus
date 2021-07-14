open Global                
                 
let match_str s s0 =
  let len = String.length s0 in
  if String.length s < len then false
  else
    String.sub s 0 (String.length s0) = s0

let d2smt d =
  match d with
    Int(n) -> if n<0 then "(- "^(string_of_int (-n))^")"
              else string_of_int n
  | Bool(b) -> if b then "true" else "false"
  | Float(x) -> if x < 0.0 then "(- "^(Float.to_string(-. x))^")"
                else Float.to_string(x)
  
let atom2smt (p, args) =
  "("^p^" "^
    (List.fold_left
      (fun s d -> s^" "^(d2smt d)) "" args)^")"

let rec take_n n l =
  if n<=0 then []
  else
    match l with
      [] -> []
    | x::l' -> x::(take_n (n-1) l')
  
let output_smt smtfile outfile =
  let fp1 = open_in smtfile in
  let fp2 = open_out outfile in
  let flag = ref true in
  while(!flag) do
    let s = input_line fp1 in
    if match_str s "(check-sat)" then
      flag := false
    else
      output_string fp2 (s^"\n")
  done;
  let preds = Hashtbl.fold (fun p _ l -> p::l) signatures [] in
  let poscs = List.map (fun p -> List.filter (fun (q,_) -> p=q) !posc) preds in
  let poscs = List.map (take_n 20) poscs in
  List.iter
    (List.iter (fun atom ->
      let s = Printf.sprintf "(assert (forall () %s))\n" (atom2smt atom) in
      output_string fp2 s))
    poscs;
  let negcs = List.map (fun p -> List.filter (fun (q,_) -> p=q) !negc) preds in
  let negcs = List.map (take_n 20) negcs in
  List.iter
    (List.iter (fun atom ->
      let s = Printf.sprintf "(assert (forall () (=> %s false)))\n" (atom2smt atom) in
      output_string fp2 s))
    negcs;
  output_string fp2 ("(check-sat)\n");
  try
    while true do
      let s = input_line fp1 in output_string fp2 (s^"\n")
    done
  with End_of_file ->
    (close_in fp1; close_out fp2)
   

let main() =
    let datafile = Sys.argv.(1) in
    let smtfile = Sys.argv.(2) in
    let outfile =  Sys.argv.(3) in
    (Dataloader.input_alldata datafile signatures constraints;
     output_smt smtfile outfile);;

    
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
