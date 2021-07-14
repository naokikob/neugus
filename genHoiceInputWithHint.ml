exception Done of int
  
let remove_char s c =
  String.concat "" (String.split_on_char c s)
  
let match_str s s0 =
  let len = String.length s0 in
  if String.length s < len then false
  else
    String.sub s 0 (String.length s0) = s0

let remove_paren s =
  remove_char (remove_char s '(') ')'
  
let read_signature smtfile =
  let fp = open_in smtfile in
  let sigref = ref [] in
  try
    while true do
      let s = input_line fp in
      if match_str s "(declare-fun" then
        let s' = remove_paren s in
        let sl =
          let sl = String.split_on_char ' ' s' in
          if List.length sl < 3 then
           let s1 = remove_paren (input_line fp) in
           let s2 = remove_paren (input_line fp) in
           let sl = sl@(String.split_on_char ' ' s1)@(String.split_on_char ' ' s2) in
           List.filter (fun x -> not(x="")) sl
          else List.filter (fun x -> not(x="")) sl
        in
        let pred = List.nth sl 1 in
        let n = List.length
                  (List.filter (fun x -> x="Int") sl)
        in
        sigref := (pred, n)::!sigref
      else ()
    done;
    []
  with End_of_file ->
    !sigref
  
let read_quals qualfile =
  let fp = open_in qualfile in
  let quals = ref [] in
  let predref = ref "" in
  try
    while true do
      let s = input_line fp in
      if match_str s "; " then
        predref := String.sub s 2 (String.length s - 2) 
      else
        quals := (!predref, s)::!quals
    done;
    []
  with End_of_file ->  (close_in fp; !quals)
  
let output_smt sourcesmt l signature outsmt =
  let fp1 = open_in sourcesmt in
  let fp2 = open_out outsmt in
  (* copy all before (check-sat) *)
  let flag = ref true in
  while !flag do
    let s = input_line fp1 in
    if match_str s "(check-sat)" then
      flag := false
    else
      output_string fp2 (s^"\n")
  done;
  (* output qualifier hints *)
  List.iter (fun (pred, qual) ->
      let arity = List.assoc pred signature in
      let vardec = String.concat " "
                     (List.init arity (fun i -> "(x"^(string_of_int i)^" Int)"))
      in
      let atom = "("^pred^" "^(String.concat " "
                     (List.init arity (fun i -> "x"^(string_of_int i))))^")"
      in
      let s =
        Printf.sprintf "(assert (forall (%s) (=> (and %s %s) %s)))\n"
          vardec atom qual atom
      in
      output_string fp2 s) l;
  (* output check-sat *)
  output_string fp2 "(check-sat)\n(get-model)\n";
  close_in fp1; close_out fp2
    
let main () =
  let sourcesmt = Sys.argv.(1) in
  let qualfile = Sys.argv.(2) in
  let sign = read_signature sourcesmt in
  let l = read_quals qualfile in
  let outsmt = Sys.argv.(3) in
  output_smt sourcesmt l sign outsmt;;

if !Sys.interactive then
  ()
else
  main();;

