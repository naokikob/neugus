let path = "" (* either set this to the path of this directory, or add this directory to the PATH environment variable *)
let path2 = ""
let learnopt = ref ""
let successful filename = 
  let tmpfile2 = "tmp1.log" in
  let _ = Sys.command ("grep timeout "^filename^" > "^tmpfile2) in
  let fp = open_in tmpfile2 in
  let s = try input_line fp with End_of_file -> "" in
  not(s="timeout")

let timelimit = ref 10
let rate = ref "0.01"
let size1 = ref 32
let size2 = ref 8
let bias = ref 10
let datagen = ref false
let datagen2_timelimit = ref 0
let datagen2 = ref 0
  
let rec read_options index =
  match Sys.argv.(index) with
    "-t" -> (timelimit := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-rate" -> (rate := Sys.argv.(index+1); read_options (index+2))
  | "-bias" -> (bias := int_of_string(Sys.argv.(index+1)); read_options (index+2))
  | "-nodes" -> (size1 := int_of_string(Sys.argv.(index+1));
                 size2 := int_of_string(Sys.argv.(index+2));
                 read_options (index+3))
  | "-mod2" -> (learnopt := " -mod2"^(!learnopt); read_options (index+1))
  (* This option is not provided for public version
    | "-datagen" -> (datagen := true; read_options (index+1)) *)
  | "-datagen2" -> (datagen2 := int_of_string(Sys.argv.(index+1));
                    datagen2_timelimit := int_of_string(Sys.argv.(index+2));
                    read_options (index+3))
  | _ -> index

let diff_is_small _ _ = false

let cycle = ref 0
let tmpname(n)= "tmp"^(string_of_int n)
          
let rec repeat smtfile datfile =
  let (smtfile2,datfile2) =
    if !datagen2>0 then
          let _ = print_string "collecting data by using hoice --datagen\n";flush stdout in
          let hoicedatalog = "hoicedata.out" in
          let _ = Sys.command ("hoice --simplify off -v -v --datagen 100 --datafile "
                               ^datfile^" --timeout "^(string_of_int !datagen2)
                                 ^" "^smtfile^" > "^hoicedatalog) in
          if successful(hoicedatalog) then
             let _ = Sys.command ("cat "^hoicedatalog) in exit(0)
          else
            let _ = Sys.command (path^"hoicelog2dat.sh -noimp "^hoicedatalog) in
            let datfile3 = hoicedatalog^".dat" in
            let newdatfile = tmpname(!cycle)^".dat" in
            let _ = Sys.command (path^"mergedata.sh "^datfile^" "^datfile3^" "^newdatfile) in
            (*
          let smtfile2 = tmpname(!cycle)^".smt2" in  (* add collected data also to smt2 file; this may cause a slow-down *)
          let _ = Sys.command (path^"data2smt.sh "^datfile3^" "^smtfile^" "^smtfile2) in
             *)
            let _ = print_string "done: data generation\n";flush stdout in
            let _ = datagen2 := 0 in
            (smtfile, newdatfile)
    else if !datagen then
          let _ = print_string "collecting data by unit propagation\n" in
          let pcsatdata = Sys.getcwd()^"/pcsat.dat" in
          let _ = Sys.command (path2^"run.sh "^smtfile^" "^pcsatdata) in
          let newdatfile = tmpname(!cycle)^".dat" in
          let _ = Sys.command (path^"mergedata.sh "^datfile^" "^pcsatdata^" "^newdatfile) in
          let smtfile2 = tmpname(!cycle)^".smt2" in
          let _ = Sys.command (path^"data2smt.sh "^pcsatdata^" "^smtfile^" "^smtfile2) in
          let _ = print_string "done: unit propagation\n";flush stdout in
          let _ = datagen := false in
          (smtfile2, newdatfile)
    else (smtfile, datfile)
  in
  let _ = cycle := !cycle+1 in
  (* learning *)
  let qualfile = "tmp_quals.smt2" in
  let _ = print_string "Learning qualifiers\n" in
  let _ = Sys.command (path^"learn.sh -qce 2 -distill -smt "^qualfile^(!learnopt)^" -4l -nodes "^(string_of_int !size1)^" -nodes2 "^(string_of_int !size2)^" -bias "^(string_of_int !bias)^" -rate "^(!rate)^" "^datfile2) in
  let _ = print_string "Done: qualifiers collected\n" in
  let hintfile = smtfile2^"_with_hint.smt2" in
  let _ = Sys.command (path^"genHoiceInputWithHint.sh "^smtfile2^" "^qualfile^" "^hintfile) in
  let hoicelog = tmpname(!cycle)^".out" in
  let _ = Printf.printf "Running hoice with hints (cycle: %d)\n" !cycle; flush stdout in
  let _ = Sys.command ("hoice --simplify off --datafile "^datfile2^" -v -v --timeout "^(string_of_int !timelimit)^" "^hintfile^" > "^hoicelog) in
  let _ = Printf.printf "Done: hoice\n"; flush stdout in
  if successful(hoicelog) then
    let _ = Sys.command ("cat "^hoicelog) in ()
  else
    let _ = Sys.command (path^"hoicelog2dat.sh -noimp "^hoicelog) in
    let datfile3 = hoicelog^".dat" in
    let newdatfile = tmpname(!cycle)^".dat" in
    let _ = Sys.command (path^"mergedata.sh "^datfile2^" "^datfile3^" "^newdatfile) in
    let _ = timelimit := !timelimit + 5 in
    repeat smtfile2 newdatfile
    
                      
let main () =
  let index = read_options 1 in
  let smtfile = Sys.argv.(index) in
  let tmpfile = smtfile^".out" in
  if !datagen2>0 then
    let _ = print_string "running hoice preprocessor\n"; flush stdout in
    let _ = Sys.command ("hoice --infer off --log_preproc on -v -v "^smtfile^" > "^tmpfile) in
    let _ = print_string "done\n"; flush stdout in
    let optsmtfile = "hoice_out/preproc/instances/preproc_0000_fixed_point.smt2" in
    let _ = print_string "collecting data by using hoice --datagen\n";flush stdout in
    let hoicedatalog = "hoicedata.out" in
    let _ = Sys.command ("hoice --simplify off -v -v --datagen "^(string_of_int !datagen2)
                         ^" --timeout "^(string_of_int !datagen2_timelimit)
                         ^" "^optsmtfile^" > "^hoicedatalog) in
    if successful(hoicedatalog) then
      let _ = Sys.command ("cat "^hoicedatalog) in exit(0)
    else
      let _ = Sys.command (path^"hoicelog2dat.sh -noimp "^hoicedatalog) in
      let datfile3 = hoicedatalog^".dat" in
      let _ = print_string "done: data generation\n";flush stdout in
      let _ = datagen2 := 0 in
      repeat optsmtfile datfile3
  else
    let _ = print_string "running hoice\n"; flush stdout in
    let _ = Sys.command ("hoice --timeout "^(string_of_int !timelimit)^" --log_preproc on -v -v "^smtfile^" > "^tmpfile) in
    let _ = print_string "done\n"; flush stdout in
    if successful(tmpfile) then  (* hoice terminated successfully *)
      let _ = Sys.command ("cat "^tmpfile) in ()
    else
      let optsmtfile = "hoice_out/preproc/instances/preproc_0000_fixed_point.smt2" in
      let _ = Sys.command (path^"hoicelog2dat.sh "^tmpfile) in
      let datfile = tmpfile^".dat" in
      repeat optsmtfile datfile;;

if !Sys.interactive then
  ()
else
  main();;

