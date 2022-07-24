(* let path = "/home/koba/program/torch/torch/chc/" *)
let path = ""
let oracle_arity = ref 1
let options = ref ""
let main_arity = ref 1
let main_argrange = ref [||]
let trial_limit = ref 6
let trial = ref 0
let total_trial = ref 0          
let testnum = ref 30
let loopbound = ref 10            
let oracleargs = ref ""
let oraclearglist = ref ""
let posdata = ref true
let mainargs = ref ""
let pdata_restriction = ref false
                      
let readspec specfile =
  let fp = open_in specfile in
  let _ = oracle_arity := int_of_string (input_line fp) in
  let _ = main_arity := int_of_string (input_line fp) in
  let a = Array.make !main_arity (-10,10) in
  let _ = main_argrange := a in
  for i=0 to !main_arity-1 do
    let low = int_of_string (input_line fp) in
    let high = int_of_string (input_line fp) in
    a.(i) <- (low, high)
  done

let is_empty_ce dfile =
  let fp = open_in dfile in
  let line = ref 0 in
  try
    while true do
      let s = input_line fp in
      if String.length s>0 then line := !line + 1
    done;
    false
  with End_of_file ->
    (close_in fp; !line=0)
       
let copy_file fp1 fp2 =
  try
    while true do
      let s = input_line fp1 in
      output_string fp2 (s^"\n")
    done
  with End_of_file -> ()
  
let output_mlfile file source dfile1 dfile2 oracledef =
  let fp = open_out file in
  let fps = open_in source in
  let fph = open_in "oracleheader.ml" in
  output_string fp oracledef;
  try
    while true do
      let s = input_line fph in
      output_string fp (s^"\n")
    done
  with End_of_file ->
    close_in fph;
    output_string fp ("let oracle "^(!oracleargs)^
                        " = let b = oracle "
                        ^(!oracleargs)
                        ^" in (record("
                        ^(!oraclearglist)^",b); b)\n");
    try
      while true do
        let s = input_line fps in
        output_string fp (s^"\n")
      done
    with End_of_file ->
      output_string fp "let test n =\n";
      output_string fp ("let dfp1 = open_out \""^dfile1^"\" in\n");
      output_string fp ("let dfp2 = open_out \""^dfile2^"\" in\n");
      output_string fp "  for j=1 to n do\n";
      for i=0 to !main_arity-1 do
        let (low,high) = (!main_argrange).(i) in
        output_string fp
          (Printf.sprintf "    let y%d = Random.int(%d)+(%d) in\n" i (high-low+1) low)
      done;
      output_string fp
        ("    history := []; loopcount := 0;loopbound := "^(string_of_int !loopbound)^";\n    try main "^(!mainargs)
         ^";gen_pconstraint dfp2 with Assert_failure _ | Out_of_loopbound -> gen_constraint dfp1\n");
      output_string fp "  done; close_out dfp1; close_out dfp2;;\n";
      if !pdata_restriction then
        output_string fp ("pdata_restriction := true;;\n");
      output_string fp ("test "^(string_of_int !testnum)^";;\n");
      close_in fps; close_out fp

let rec read_options index =
  match Sys.argv.(index) with
    "-try" -> (trial_limit := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-test" -> (testnum := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-loop" -> (loopbound := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-negonly" -> (posdata := false; read_options (index+1))
  | "-bias" -> (options := !options^" -abias "^(Sys.argv.(index+1)); read_options (index+2))
  | _ -> index
       
let prepare_datafile dfile previous_dfile dfile1 dfile2 =
  let fp = open_out dfile in
  let fp0 = open_in previous_dfile in
  let fp1 = open_in dfile1 in
  let fp2 = open_in dfile2 in
  copy_file fp0 fp;
  copy_file fp1 fp;
  if !posdata then copy_file fp2 fp;
  close_out fp; close_in fp0; close_in fp1; close_in fp2

exception Succ
exception Fail
  
let main () =
  let index = read_options 1 in
  let filename = Sys.argv.(index) in
  let tmpfilename = "tmp/"^filename in
  let mlfile = filename^".ml" in
  let specfile = filename^".spec" in
  let _ = readspec specfile in
  let oraclearg = List.init !oracle_arity (fun i -> "x"^(string_of_int i)) in
  let _ = oracleargs := List.fold_left (fun s v -> s^" "^v) "" oraclearg in
  let _ = oraclearglist :=
            "["^(List.fold_left
                   (fun s v -> s^";"^v) (List.hd oraclearg) (List.tl oraclearg))^"]" in
  let _ = mainargs := List.fold_left (fun s v -> s^" "^v) ""
                        (List.init !main_arity (fun i -> "y"^(string_of_int i))) in
  let oracledef =
    ref ("let oracle "^(!oracleargs)^" = Random.int(2)>0\n")
  in
  let datacontents =
    let s = "Signature:\noracle "
            ^(List.fold_left
                (fun s _ -> (s^" Int")) "" (List.init (!oracle_arity) (fun _->0)))
            ^"\nConstraints:\n"
    in ref s
  in
  let previous_dfile = tmpfilename^"_0.dat" in
  let _ = let fp = open_out previous_dfile in
          output_string fp (!datacontents); close_out fp
  in
  try
    while !trial <= !trial_limit do
      let _ = trial := !trial + 1 in
      let testfile = tmpfilename^"_"^(string_of_int !trial)^".ml" in
      let dfile1 = tmpfilename^"_"^(string_of_int !trial)^"_neg.dat" in
      let dfile2 = tmpfilename^"_"^(string_of_int !trial)^"_pos.dat" in
      let prev_dfile =
        if !trial mod 3 = 1 then (* periodically use random execution *)
          (oracledef := "let oracle "^(!oracleargs)^" = Random.int(2)>0\n";
           tmpfilename^"_"^(string_of_int (!trial -1))^".dat")
        else
          tmpfilename^"_"^(string_of_int (!trial -1))^".dat"
      in
      let _ = output_mlfile testfile mlfile dfile1 dfile2 !oracledef in
      let _ = Sys.command("ocaml < "^testfile) in
      if is_empty_ce dfile1 then
        raise Succ
      else
        let dfile = tmpfilename^"_"^(string_of_int !trial)^".dat" in
        let _ = prepare_datafile dfile prev_dfile dfile1 dfile2 in
        let oraclefile = tmpfilename^"_"^(string_of_int !trial)^"_oracle.ml" in
        let res = Sys.command (path^"learn.sh -ml "^oraclefile^" "^(!options)^" "^dfile) in
        (if res=0 then
           try let fp = open_in oraclefile in
               let s = input_line fp in
               oracledef := (s^"\n")
           with _ -> ()
         else
           (pdata_restriction := true;
            total_trial := !total_trial + !trial - 1;
            trial := 0)
        )
    done;
    print_string "Failed to synthesize an oracle\n"
  with Succ ->
    (print_string ("Trial: "^(string_of_int (!total_trial+ !trial-1))^"\n");
     print_string "Succeeded to synthesize an oracle\n";
    print_string !oracledef);;


if !Sys.interactive then
  ()
else
  main();;

