(* check whether appropriate qualifiers have been found *)

let errorbound = ref 0

let rec int_of_stringwithsp s =
  if s.[0]=' ' then int_of_stringwithsp (String.sub s 1 (String.length s - 1))
  else Scanf.sscanf s "%d" (fun n->n)

let qual_eq q1 q2 =
  (abs(List.hd q1 - List.hd q2) <= !errorbound)
  && (List.tl q1 = List.tl q2)
  
let read_ans file =
  let fp = open_in file in
  let answers = ref [] in
  (try
    while true do
      (let s = input_line fp in
       let sl = List.map int_of_stringwithsp  (String.split_on_char ',' s) in
       let sl = List.rev_append sl [] in
       answers := sl::!answers)
    done
   with End_of_file -> close_in fp);
  !answers

let read_quals file =
  let fp1 = open_in (file^"1.csv") in
  let fp0 = open_in (file^"0.csv") in
  let quals1 = ref [] in
  let quals0 = ref [] in
  let _ = input_line fp1 in (* skip predicate name *)
  let _ = input_line fp0 in (* skip predicate name *)
  (try
     while true do
         let s = input_line fp1 in
         let sl = List.map int_of_stringwithsp  (String.split_on_char ',' s) in
         let sl = List.rev_append sl [] in
          quals1 := sl::!quals1
    done
  with End_of_file -> close_in fp1);
  (try
     while true do
         let s = input_line fp0 in
          let sl = List.map int_of_stringwithsp  (String.split_on_char ',' s) in
         let sl = List.rev_append sl [] in
          quals0 := sl::!quals0
    done
  with End_of_file -> close_in fp0);
  (!quals1, !quals0)

let rec read_options index =
  match Sys.argv.(index) with
    "-e" -> (errorbound := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | _ -> index
  
let main() =
  let index = read_options 1 in
  let ans_filename = Sys.argv.(index) in
  let qual_filename = Sys.argv.(index+1) in
  let answers = read_ans ans_filename in
  let (quals1,quals0) = read_quals qual_filename in
  let matched1 = List.filter (fun q -> List.exists (qual_eq q) quals1) answers in
  let matched0 = List.filter
                   (fun q -> not(List.mem q matched1))
                   (List.filter (fun q -> List.exists (qual_eq q) quals0) answers) in
  Printf.printf "# of correct qualifiers: %d, %d\n"
    (List.length matched1) (List.length matched0);;

    
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
