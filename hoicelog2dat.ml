exception Done of int
type data = Int of int | Bool of bool

let noimp = ref false
let cutimp = ref false
          
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

let rec normalize_minus s = (* efficiency is ignored *)
  if String.length s < 2 then s
  else if String.sub s 0 2 = "- " then
    "-"^(normalize_minus (String.sub s 2 (String.length s - 2)))
  else (String.sub s 0 1)^(normalize_minus (String.sub s 1 (String.length s -1)))
  
let remove_char s c =
  String.concat "" (String.split_on_char c s)
  
let normalize_datastring s =
  let s = normalize_minus s in
  let s = remove_char s '(' in
  let s = remove_char s ')' in
  s

let match_str s s0 =
  let len = String.length s0 in
  if String.length s < len then false
  else
    String.sub s 0 (String.length s0) = s0

let str2data x =
  match x with
    "_" -> Int(Random.int(20)-10)
  | "true" -> Bool(true)
  | "false" -> Bool(false)
  | _ -> Int(int_of_string x)

let data2str d =
  match d with
    Int(n) -> string_of_int(n)
  | Bool(b) -> if b then "true" else "false"

let data2kind d =
  match d with
    Int(_) -> "Int"
  | Bool(_) -> "Bool"

let datastr2kind d =
  match d with
    "_" -> "Unknown"
  | "true" -> "Bool"
  | "false" -> "Bool"
  | _ -> "Int"

let datastr2str (k, s) =
  if s="_" then
    match k with
      "Bool" -> if Random.int(2)=0 then "true" else "false"
    | _ -> string_of_int(Random.int(10)-5)
  else s

let merge_tl tl1 tl2 =
  let tll = List.combine tl1 tl2 in
  List.map (fun (k1,k2) ->
      if k1="Unknown" then k2
      else if k2="Unknown" then k1
      else k1)
    tll
  
let read_data file =
  let fp = open_in file in
  let pos = ref [] in
  let neg = ref [] in
  let imp = ref [] in
  let alldata = ref [] in
  let s0 = "; pos (" in
  let s1 = "; ) neg (" in
  let s2 = "; ) constraints (" in
  let s3 = "; ) constraint map(" in
  let s4 = "; ) positive examples staged (" in

  try
    while true do
      let flag = ref true in
      while !flag do
        let s = input_line fp in
        if match_str s s0 then flag := false 
      done;
      flag := true;
      while !flag do
        let s = input_line fp in
        if match_str s s1 then flag := false
        else
          pos := (String.sub s 4 (String.length s - 4))::!pos
      done;
      flag := true;
      while !flag do
        let s = input_line fp in
        if match_str s s2 then flag := false
        else
          neg := (String.sub s 4 (String.length s - 4))::!neg
      done;
      flag := true;
      while !flag do 
        let s = input_line fp in
        if match_str s s3 then flag := false
        else
          if String.contains s '_' then ()
          else
            let i = String.index_from s 0 '|' in
            imp := (String.sub s (i+2) (String.length s - i - 2)):: !imp
      done;
      flag := true;
      while !flag do 
        let s = input_line fp in
        if match_str s s4 then flag := false
        else
          if String.contains s '_' then ()
          else
            let i = String.index_from s 0 '>' in
            let s1 = String.sub s 4 (i-6) in
            alldata := s1:: !alldata
      done;
    done;
    ([], [], [], [])
  with End_of_file ->
(*    let pos' = List.sort_uniq compare !pos in
    let neg' = List.sort_uniq compare !neg in
 *)
    let imp' = List.sort_uniq compare !imp in
    let pos'' = List.map normalize_datastring !pos in
    let neg'' = List.map normalize_datastring !neg in
    let imp'' = List.map normalize_datastring imp' in
    let alldata'' = List.map normalize_datastring !alldata in
    let pos1 = List.map (fun s ->
                   let l = String.split_on_char ' ' s in
                   (List.hd l, (* List.map str2data *) (List.tl l)))
                 pos''
    in
    let pos1 = List.sort_uniq compare pos1 in
    let neg1 = List.map (fun s ->
                   let l = String.split_on_char ' ' s in
                   (List.hd l, (* List.map str2data *) (List.tl l)))
                 neg''
    in
    let neg1 = List.sort_uniq compare neg1 in
    let alldata1 = List.map (fun s ->
                   let l = String.split_on_char ' ' s in
                   (List.hd l, (* List.map str2data *) (List.tl l)))
                 alldata''
    in
    (pos1, neg1, imp'', alldata1)
  
let get_signature data =
  let tab = Hashtbl.create 16 in
  List.iter
    (fun (pred, args) ->
      try
        let (b,tl) = Hashtbl.find tab pred in
        if b then ()
        else
          let tl1 = List.map datastr2kind args in
          let tl2 = merge_tl tl tl1 in
          Hashtbl.replace tab pred (not(List.exists (fun t -> t="Unknown") tl2), tl2)
      with Not_found ->
        let tl1 = List.map datastr2kind args in
        Hashtbl.replace tab pred (not(List.exists (fun t -> t="Unknown") tl1), tl1)
    )
    data;
  tab

let output_pos fp signature pos =
  List.iter (fun (pred, args) ->
      let (_,kinds) = Hashtbl.find signature pred in
      let kindargs = List.combine kinds args in
      let s = "P "^pred^" "^(String.concat " " (List.map datastr2str kindargs))^"\n" in
      output_string fp s)
  pos

let output_neg fp signature neg =
  List.iter (fun (pred, args) ->
      let (_,kinds) = Hashtbl.find signature pred in
      let kindargs = List.combine kinds args in
      let s = "N "^pred^" "^(String.concat " " (List.map datastr2str kindargs))^"\n" in
      output_string fp s)
  neg

let rec list_split x l =
  match l with
    [] -> ([], [])
  | y::l' ->
     if x=y then ([], l')
     else let (l1,l2) = list_split x l' in
          (y::l1, l2)
  
let output_imp fp imp =
  List.iter (fun s ->
      let sl = String.split_on_char ' ' s in
      let (sl1,sl2) = list_split "=>" sl in
      let (sl1,sl2) =
        if List.length sl2=1 && List.hd sl2="false" then
          (sl1, List.tl sl2)
        else (sl1,sl2)
      in
      let s = "I "^(String.concat " " sl1)^" => "^(String.concat " " sl2)^"\n" in
      output_string fp s)
  imp
  
let output_data datfile signature (pos, neg, imp) =
  let fp = open_out datfile in
  output_string fp "Signature:\n";
  Hashtbl.iter (fun pred (_,kinds) ->
      let kinds = List.map (fun k -> if k="Unknown" then "Int" else k) kinds in
      let s = pred^" "^(String.concat " " kinds)^"\n" in
      output_string fp s)
    signature;
  output_string fp "Constraints:\n";
  output_pos fp signature pos;
  output_neg fp signature neg;
  if !noimp then ()
  else
    (let imp = if !cutimp then list_take_n 100 imp else imp in
    output_imp fp imp);
  close_out fp


let rec read_options index =
  match Sys.argv.(index) with
    "-noimp" -> (noimp := true; read_options (index+1))
  | "-cutimp" -> (cutimp := true; read_options (index+1))
  | _ -> index
       
let main () =
  let index = read_options 1 in
  let logfile = Sys.argv.(index) in
  let datfile = logfile^".dat" in
  let (pos, neg, imp, alldata) = read_data logfile in
  let signature = get_signature (pos@neg@alldata) in
  output_data datfile signature (pos, neg, imp);;
    
if !Sys.interactive then
  ()
else
  main();;

