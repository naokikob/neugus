let _ = Random.self_init();;
let delete_dup l = l
let output_atom fp sep l =
 ( output_string fp "oracle ";
  List.iter (fun n-> output_string fp (Printf.sprintf "%d " n)) l;
  output_string fp sep)

exception Out_of_loopbound
let history = ref []
let loopcount = ref 0
let loopbound = ref 20
let pdata_restriction = ref false
let record (i,o) = (loopcount := !loopcount + 1;
                    history := (i,o)::!history;
                    if !loopcount > !loopbound then raise Out_of_loopbound)

let gen_constraint_aux clause fp =
  let pl = List.map fst (List.filter (fun (_,b)->not(b)) clause) in
  let nl = List.map fst (List.filter (fun (_,b)->b) clause) in
  let pl' = delete_dup pl in 
  let nl' = delete_dup nl in
  if nl'=[] && List.length pl'=1 then
    (output_string fp "P ";
     output_atom fp "" (List.hd pl');
     output_string fp "\n")
  else if pl'=[] && List.length nl'=1 then 
    (output_string fp "N ";
     output_atom fp "" (List.hd nl');
     output_string fp "\n")
  else
  (output_string fp "I ";
   List.iter (output_atom fp " ") nl';
   output_string fp " => ";
   List.iter (output_atom fp " ") pl';
   output_string fp "\n")
  
let gen_constraint fp =
  gen_constraint_aux !history fp

let rec gen_pconstr_sub cl1 cl2 fp =
  match cl2 with
    [] -> ()
  | (inp,b)::cl2' ->
     gen_constraint_aux ((inp,not(b))::cl1@cl2') fp;
     gen_pconstr_sub ((inp,b)::cl1) cl2' fp

  
let gen_pconstraint fp =
  match !history with
    [] -> ()
  |  [(inp,b)] ->
     if b=true then
       (output_string fp "P ";
        output_atom fp "" inp;
        output_string fp "\n")
     else 
       (output_string fp "N ";
        output_atom fp "" inp;
        output_string fp "\n")
  | _ ->
     if !pdata_restriction then ()
     else gen_pconstr_sub [] !history fp
