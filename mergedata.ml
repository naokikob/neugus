open Global                
                 
let match_str s s0 =
  let len = String.length s0 in
  if String.length s < len then false
  else
    String.sub s 0 (String.length s0) = s0

  
let merge datafile outfile =
  let fp1 = open_in datafile in
  let fp2 = open_out outfile in
  let flag = ref true in
  while(!flag) do
    let s = input_line fp1 in
    output_string fp2 (s^"\n");
    if match_str s "Constraints:" then
      flag := false
    else
      ()
  done;
  Dataloader.output_constr_aux fp2 (!posc, !negc, !impc);
  try
    while true do
      let s = input_line fp1 in output_string fp2 (s^"\n")
    done
  with End_of_file ->
    (close_in fp1; close_out fp2)

let main() =
    let datafile1 = Sys.argv.(1) in
    let datafile2 = Sys.argv.(2) in
    let outfile =  Sys.argv.(3) in
    (Dataloader.input_alldata datafile1 signatures constraints;
     Dataloader.input_alldata datafile2 signatures constraints;
     Dataloader.output_alldata signatures (!posc, !negc, !impc) outfile
    (*merge datafile1 outfile*));;
    
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
