exception Done of int
let get_arity filename predname =
  let fp = open_in filename in
  let s0 = "( define-fun "^predname in
  let len = String.length s0 in
  let arity = ref (-1) in
  while !arity<0 do
    let s = input_line fp in
    if String.length s >= len && String.sub s 0 len = s0 then
      let n = List.length (List.filter (fun x->x="Int") (String.split_on_char ' ' s)) in
      arity := n
    else ()
  done;
  close_in fp;
  !arity

let get_vars filename predname =
  let fp = open_in filename in
  let s0 = "( define-fun "^predname in
  let len = String.length s0 in
  let vars = ref [] in
  while !vars = [] do
    let s = input_line fp in
    if String.length s >= len && String.sub s 0 len = s0 then
      let sl = (String.split_on_char ' ' s) in
      let sl2 = List.combine sl ((List.tl sl)@["dummy"]) in
      vars := List.map fst (List.filter (fun (_,s')->s'="Int") sl2)
    else ()
  done;
  let body = ref [] in
  let flag = ref true in
  while !flag do
    let s = input_line fp in
    if String.sub s 0 1 = ")" then
      flag := false
    else
      body := s:: !body 
  done;
  close_in fp;
  (!vars, String.concat "\n" (List.rev !body))

let rec list_take_n n l =
  if n<=0 then []
  else (List.hd l)::(list_take_n (n-1) (List.tl l))
  
let precond _ arity_inv  (vars_pre, _) =
  let vars0 = vars_pre in
  let vars1 = list_take_n arity_inv vars_pre 
    (* List.init arity_inv (fun i -> "x"^(string_of_int i)) *)
  in
  ("(assert (forall ("
  ^ String.concat " " (List.map (fun v -> "("^v^" Int)") vars0)
  ^ ")\n  (=> " ^ (* body_pre *)
    "(pre-f " ^ (String.concat " " vars0) ^ ")"
  ^ "\n        (inv-f " ^ (String.concat " " vars1) ^ "))))\n")

let invcond _ arity_inv  (vars_trans, body_trans) = 
  let vars0 = vars_trans
                (* List.init arity_trans (fun i -> "x"^(string_of_int i))*)
  in
  let vars1 = list_take_n arity_inv vars_trans 
    (* List.init arity_inv (fun i -> "x"^(string_of_int i))*)
  in
  let vars2 = List.map (fun s -> s^"!") vars1 in
  ("(assert (forall ("
  ^ String.concat " " (List.map (fun v -> "("^v^" Int)") vars0)
  ^ ")\n  (=> (and " ^ body_trans ^
     "\n        (inv-f " ^  (String.concat " " vars1) ^ "))\n"
  ^ "        (inv-f " ^ (String.concat " " vars2) ^ "))))\n")

let postcond _ arity_inv  (vars_post, body_post) = 
  let vars0 = vars_post
    (* List.init arity_post (fun i -> "x"^(string_of_int i)) *)
  in
  let vars1 = list_take_n arity_inv vars_post in
  (* List.init arity_inv (fun i -> "x"^(string_of_int i)) *) 
  ("(assert (forall ("
  ^ String.concat " " (List.map (fun v -> "("^v^" Int)") vars0)
  ^ ")\n  (=> (inv-f "
  ^ (String.concat " " vars1)
  ^ ")\n" ^ body_post ^ "\n)))\n")

let convert (arity_inv, arity_pre, arity_trans, arity_post)
      (vars_pre, body_pre)(vars_trans, body_trans)(vars_post, body_post)
      clnfile smtfile =
  let fp1 = open_in clnfile in
  let fp2 = open_out smtfile in
  let _ = output_string fp2 "(set-logic HORN)\n" in
  let s0 = "( define-fun pre-f" in
  let len0 = String.length s0 in
  let s1 = "SPLIT_HERE" in
  let len1 = String.length s1 in
  let flag = ref true in
  while !flag do (* skip until define-fun pre-f *)
    let s = input_line fp1 in
    if String.length s >= len0 && String.sub s 0 len0 = s0 then
      (output_string fp2 (s^"\n"); flag := false)
    else ()
  done;
  flag := true;
  while !flag do (* copy contents except SPLIT_HERE*)
      let s = input_line fp1 in
      if String.length s >= len1 && String.sub s 0 len1 = s1 then
        flag := false
      else
        output_string fp2 (s^"\n") 
  done;
  let _ = close_in fp1 in
  let inv_t = List.init arity_inv (fun _ -> "Int") in
  let s0 = "(declare-fun inv-f ("^(String.concat " " inv_t)^") Bool)\n" in
  let s1 = precond arity_pre arity_inv (vars_pre, body_pre) in
  let s2 = invcond arity_trans arity_inv (vars_trans, body_trans) in
  let s3 = postcond arity_post arity_inv (vars_post, body_post) in
  output_string fp2 (s0^"\n");
  output_string fp2 (s1^"\n");
  output_string fp2 (s2^"\n");
  output_string fp2 (s3^"\n");
  output_string fp2 "(check-sat)\n(get-model)\n";
  close_out fp2
  
let main () =
  let clnfile = Sys.argv.(1) in
  let smtfile = clnfile^".smt2" in
  let arity_inv = get_arity clnfile "inv-f" in
  let arity_pre = get_arity clnfile "pre-f" in
  let arity_trans = get_arity clnfile "trans-f" in
  let arity_post = get_arity clnfile "post-f" in
  let (vars_pre, body_pre) = get_vars clnfile "pre-f" in
  let (vars_trans, body_trans) = get_vars clnfile "trans-f" in
  let (vars_post, body_post) = get_vars clnfile "post-f" in
  let _ = convert (arity_inv, arity_pre, arity_trans, arity_post)
            (vars_pre, body_pre)(vars_trans, body_trans)(vars_post, body_post)
            clnfile smtfile in
  ();;
    
if !Sys.interactive then
  ()
else
  main();;

