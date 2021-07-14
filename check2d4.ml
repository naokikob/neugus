(* check whether appropriate qualifiers have been found *)

let rec read_ans file =
  let fp = open_in file in
  let flag = ref true in
  let answers = ref [] in
  (try
    while true do
      (let s = input_line fp in
       answers := s::!answers)
    done
   with End_of_file -> close_in fp);
  !answers

let rec read_quals file =
  let fp = open_in file in
  let flag = ref true in
  let quals = ref [] in
  let _ = input_line fp in (* skip predicate name *)
  (try
    while true do
      (let s = input_line fp in
       quals := s::!quals)
    done
  with End_of_file -> close_in fp);
  !quals
                    
let main() =
  let ans_filename = Sys.argv.(1) in
  let qual_filename = Sys.argv.(2) in
  let answers = read_ans ans_filename in
  let quals = read_quals qual_filename in
  let matched = List.filter (fun q -> List.mem q quals) answers in
    print_string ("# of correct qualifiers: "^(string_of_int (List.length matched))^"\n");;

    
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
