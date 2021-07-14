open Torch
open Global
   
exception FAIL of string
let range =
  let points1 = [(0.,1,0); (1.,1,1)] in
  let points2 = [(0.5, 2,1)] in
  let points3 = [(1./. 3.,3, 1); (2./. 3., 3, 2)] in
  let points4 = [(1./. 4., 4, 1); (3./. 4., 4, 3)] in
  List.sort (fun (x,_,_) (y, _,_) -> Float.compare x y)  (points1@points2@points3@points4)

let abs_sign r =
  if r< 0. then (Float.abs r, false)
  else (r, true)

let rec find_ratio r range =
  match range with
    [] -> []
  | [(_,x,y)] -> [(x,y)]
  | (r1,x1,y1)::(r2,x2,y2)::range' ->
     if r1 <= r && r < r2 then [(x1,y1);(x2,y2)]
     else find_ratio r ((r2,x2,y2)::range')


let rec find_devisor range r =
  match range with
    [] -> 1
  | [_] -> 1
  | (r1,x1,_)::(r2,x2,y2)::range' ->
     if r1 <= r && r < r2 then
       if r -. r1 < r2 -. r then x1
       else x2
     else find_devisor ((r2,x2,y2)::range') r 

    
let rec gcd x y =
  assert (x>=0 && y>=0);
  if x=0 then y
  else if y=0 then x
  else if x>y then gcd (x-y) y
  else gcd x (y-x)

let lcm x y =
  assert (x>0 && y>0);
  x * y / (gcd x y)
  
let normalize (x,y,z) =
  let d = gcd x (gcd y z) in (x/d, y/d, z/d)
let normalize2 (x,y) =
  let d = gcd x y in (x/d, y/d)

(* returns an index with the maximum absolute value *)
let max_index a arity =
  let index = ref 0 in
  let maxelem = ref (Float.abs(a.(0))) in
  for i=1 to arity-1 do
    let x = Float.abs(a.(i)) in
    if x > !maxelem then
      (index := i; maxelem := x)
  done;
  !index

let get_devisor x =
  let r = Float.abs x in find_devisor range r

let lcm_of_array a arity =
  let x = ref 1 in
  (*  let size = Array.length a in *)
  (for i=0 to arity-1 do
    x := lcm !x a.(i)
   done;
   !x)

let fold_constants a arity biases _ =
  let (_,x) = List.fold_left
    (fun (i,c) bias ->
      let y = a.(i) in
      let _ = (a.(i) <- 0.) in
      (i+1, y *. bias +. c))
    (arity, 0.)
    biases
  in
  a.(arity) <- Float.ceil(x)
    
let to_fraction ((a,b), weight) earity biases =
  let i = max_index a earity in
  let maxelem = a.(i) in
  let a = Array.map (fun x -> x /. maxelem) a in
  let devisors = Array.map get_devisor a in
  let common_divisor = float_of_int(lcm_of_array devisors earity) in
  let flag = (weight>0. && maxelem > 0.) || (weight<0. && maxelem < 0.) in
  let a = Array.map (fun x -> x *. common_divisor) a in
  let _ = if !poly then () else fold_constants a earity biases flag in
  let intarray = Array.map (fun x -> Float.to_int(Float.round x)) a in
  let c = if !poly then Float.to_int(Float.round b)
          else let x = intarray.(earity) in
               (intarray.(earity) <- 0; x)
  in
  let intarray2 = Array.map (fun x -> -x) intarray in
  if !dualqual 
  then
    let errorsp = List.init !qcerror (fun x->x+1) in (* [1;...;!qcerror] *)
    let errors = errorsp@(List.map (fun x-> -x) errorsp) in
    let quals_primary = [(intarray, c, true, 1);(intarray2, -(c-1), true, 1)] in
    let quals_subp = List.map (fun i-> (intarray,c+i,true,0)) errors in
    let quals_subn = List.map (fun i-> (intarray2,-(c-1)+i, true, 0)) errors in
    quals_primary@quals_subp@quals_subn
  (*                               
    [(intarray, c, true, 1); (intarray2, -(c-1), true, 1); (intarray, c+1, true,0);
     (intarray2, -(c-2), true,0); (intarray, c-1, true,0); (intarray2, -c, true, 0)]
   *)
  else if flag then [(intarray, c, true,1)]
  else [(intarray2, -(c-1), true,1)]
                   
let print_candidate (x,y,z) =
    Printf.printf "%d x + %d y + %d, " x y z

(* l0: qualifiers with priority 0, l1: qualifiers with priority 1 *)
let pushone y (l0,l1) =
  let (a,c,f,priority) = y in
  if priority=0 then
    if List.exists (fun (a',c',f',_)-> a=a' && c=c' && f=f') l1
       || List.exists (fun (a',c',f',_)-> a=a' && c=c' && f=f') l0
    then (l0,l1)
    else (y::l0, l1)
  else
    if List.exists (fun (a',c',f',_)-> a=a' && c=c' && f=f') l1 then (l0,l1)
    else (List.filter (fun (a',c',f',_)-> not(a=a' && c=c' && f=f')) l0, y::l1)
  
let rec push x (l1,l2) =
  match x with
    [] -> (l1,l2)
  | y::x' -> push x' (pushone y (l1,l2))

let extract_qualifiers p rvec =
  let max_size = Array.length rvec in
  let cut = min max_size (max !num_of_candidates
                                 (Float.to_int (Float.round (!ratio_extraction *. (Float.of_int !hidden_nodes))))) in
  let indices = List.init cut (fun x->x) in
  (*  let arity = arity_of p p in *)
  let earity = earity_of p in
  let (quals0,quals1) =
    List.fold_left
      (fun ql i ->
        let x = to_fraction (rvec.(i)) earity (Hashtbl.find biastab p)in
        push x ql)
      ([],[])
      indices
  in
  let quals = List.rev_append quals1 (List.rev_append quals0 []) in
    Hashtbl.replace qualtab p quals

let eval_qual p earity args qual =
  let (coeffs, const, flag,_) = qual in
  let c = ref (Float.of_int const) (* constant part *)
  in (* add coeffs * args *)
  let monomials = monomials_of p in
  for j=0 to earity-1 do
    c := !c +. (Float.of_int (coeffs.(j))) *. (value_of_monomial p args monomials j)
  done;
  if flag then !c>0.0 else !c <0.0
(**  
  let j = ref 0 in
  (* j: index for coefficients; j may not equal i in the presence of mod terms *)
  (for i=0 to arity-1 do
    let coeff = Float.of_int (coeffs.(!j)) in
    match List.nth args i with
      Float(x) -> (c := !c +. coeff *. x; j := !j+1)
    | Int(n) -> (c := !c +. coeff *. (Float.of_int n);
                 if !mod2 then
                   (c := !c +. (Float.of_int coeffs.(!j+1)) *. (Float.of_int (absmod n 2));
                    j := !j+2)
                 else j := !j+1
                )
    | Bool(b) ->
       if b then (c := !c +. coeff; j := !j+1)
   done;
   if flag then !c>0.0 else !c <0.0
  )
 **)

let rec eval_bmono args bmono =
  match bmono with
    Var(i) ->
    (match List.nth args i with
       Bool(b) -> b
     | _ -> assert false)
  | NVar(i) -> not(eval_bmono args (Var(i)))
  | Mod(i,k,l) ->
    (match List.nth args i with
       Int(n) -> absmod n k=l
     | _ -> assert false)
  
let eval_atom (p,id) =
  let args = Hashtbl.find id2rawdatatab (p,id) in
  let quals = Hashtbl.find qualtab p in
  let earity = earity_of p in
  (*
  let _ = Printf.printf "evaluating atom %s with arity %d\n" p earity in
  let _ = Dataloader.output_atom stdout (p, args); print_string "\n" in
   *)
  let dnf = Hashtbl.find predtab p in
  List.exists
    (fun conj ->
      let (conj2, conj1) = Util.list_split conj (List.length conj - List.length quals) in
      let qc = List.combine quals conj1 in
      let bms = bmonomials_of p in
      let bc = List.combine bms conj2 in
      (List.for_all
        (fun (qual, b) ->
          not(b) || eval_qual p earity args qual)
        qc)
      &&
        (List.for_all
           (fun (bm , b) ->
             not(b) || eval_bmono args bm)
        bc)
    )
  dnf
  
let check_imp (nl, pl) =
  List.exists (fun atom -> (not (eval_atom atom))) nl
  || List.exists (fun atom -> (eval_atom atom)) pl

  
(* entry2 has more "true" than entry 1 *)  
let entry_subsumed entry1 entry2 =
  let entry12 = List.combine entry1 entry2 in
  List.for_all (fun (b1,b2) -> b2 || not(b1)) entry12
  
let add_to_ptab entry ptab =
  if List.exists (fun entry' -> entry_subsumed entry' entry) ptab
  then ptab
  else
    let ptab' = List.filter (fun entry' -> not(entry_subsumed entry entry')) ptab in
    entry::ptab'

let add_to_ntab entry ntab =
  if List.exists (fun entry' -> entry_subsumed entry entry') ntab
  then ntab
  else
    let ntab' = List.filter (fun entry' -> not(entry_subsumed entry' entry)) ntab in
    entry::ntab'

let is_imp_atomid atomid =
  match atomid with
    I(_) -> true
  | _ -> false


let print_truth_tables (ptab, ntab) =
  print_string "truth table\n T:\n";
  Util.print_blist2 ptab;
  print_string "F:\n";
  Util.print_blist2 ntab
       
let get_truth_tables p quals ignore_imp =
  (*  let _ = print_string ("get_truth_tables called with ignore_imp="^(string_of_bool ignore_imp)^"\n") in *)
  let predictions_for_p = Hashtbl.find !last_predictions p in
  let bms = bmonomials_of p in
  let inputs = Hashtbl.find rawdatatab p in
  let earity = earity_of p in
  let (ptab,ntab) =
    Hashtbl.fold
      (fun args atomid (postab, negtab) ->
        (* TODO: for dnf/cnf, we also add negations of boolean monomials *)
        (*
        let _ = print_string ("Atom id: "^(string_of_atomid atomid)^"\n") in
        let _ = print_string (string_of_dl args) in
        let _ = List.iter (fun bm -> print_string ((string_of_bmono bm)^";")) bms in
         *)
        let quals_truthtab = (List.map (eval_bmono args) bms)@(List.map (eval_qual p earity args) quals) in
        (*
        let _ = Util.print_blist quals_truthtab in
        Printf.printf "prediction: %f\n" pred;
         *)
        let pred = Tensor.to_float0_exn (get_prediction_for_atom predictions_for_p atomid) in
        (*
        Printf.printf "prediction: %f\n" pred;
         *)
        match atomid with
          P(_) -> ((add_to_ptab quals_truthtab postab), negtab)
        | N(_) -> (postab, add_to_ntab quals_truthtab negtab)
        | I(_) ->
           if ignore_imp then (postab, negtab)
           else
             if pred > 0.5 then
                ((add_to_ptab quals_truthtab postab), negtab)
             else
               (postab, add_to_ntab quals_truthtab negtab)
      )
      inputs
      ([], [])
  in
  (* let _ = print_truth_tables (ptab, ntab) in  *)
  if List.exists (fun conj1 -> List.exists (fun conj2 -> entry_subsumed conj2 conj1) ptab) ntab
  then raise (FAIL "qualifiers missing")
  else (ptab,ntab)

let print_args = Dataloader.output_args stdout
               
let print_boollist l =
  (print_string "["; List.iter (fun b-> if b then print_string "true;" else print_string "false;") l;
   print_string "]")

let print_truthtab p inputs quals labels earity =
      Hashtbl.iter
      (fun args id ->
        let quals_truthtab = List.map (eval_qual p earity args) quals in
          (print_string "data: "; print_args args;
           print_string "qualifier values:"; print_boollist (quals_truthtab@[labels.(id)]);print_string "\n")
      )
      inputs
  
let rec minimize_conj_aux ntab quals conja i priority=
  if i<0
  then ()
  else if conja.(i) && (priority_of_qual quals i = priority) then
    (conja.(i)<- false;
     if List.exists (entry_subsumed (Array.to_list conja)) ntab
     then (conja.(i)<-true; minimize_conj_aux ntab quals conja (i-1) priority)
     else minimize_conj_aux ntab quals conja (i-1) priority
    )
  else minimize_conj_aux ntab quals conja (i-1) priority

let simplify_dnf dnf =
  List.fold_left
    (fun dnf' conj ->
      if List.exists (fun conj' -> entry_subsumed conj' conj) dnf'
      then dnf'
      else
        conj::(List.filter (fun conj' -> not(entry_subsumed conj conj')) dnf')
    )
    []
    dnf
  
let minimize_conj ntab quals conj =
  let conja = Array.of_list conj in
  let n = List.length(conj)-1 in
  (minimize_conj_aux ntab quals conja n 0;
   minimize_conj_aux ntab quals conja n 1;
   Array.to_list conja)

  
let construct_predicate_p p ignore_imp =
  let quals = try Hashtbl.find qualtab p with Not_found -> assert false in
  let (ptab,ntab) = get_truth_tables p quals ignore_imp in
  if ptab=[]
  then (* since there is no positive data, return the formula "false" *)
    []  (* false in DNF *)
  else
    let dnf =
      List.fold_left
        (fun dnf conj ->
          if List.exists (fun conj' -> entry_subsumed conj' conj) dnf
          then dnf
          else
            let conj' = minimize_conj ntab quals conj in
            conj'::(List.filter (fun conj''-> not(entry_subsumed conj' conj'')) dnf)
        )
        []
        ptab
    in dnf
    (*    let dnf = List.map (minimize_conj ntab quals) ptab in 
    simplify_dnf dnf
     *)
  
let construct_predicates() =
 let complete = ref true in
   ( Hashtbl.iter
       (fun p _ -> (* kinds are ignored for the moment; the special treatment would be required for Booleans *)
         let formula =
           if !last_imp_miss=0 then
             try construct_predicate_p p false
             with FAIL _ ->
               (complete := false;
                construct_predicate_p p true)
           else
             (complete := false;
              construct_predicate_p p true)
         in
         Hashtbl.replace predtab p formula
       )
       qualtab;
     if !complete then ()
     else (* check implication constraints *)
       if List.for_all check_imp !implications
       then ()
       else raise (FAIL "failed to find a solution for implication constraints\n")
   )

let print_qual p monomials (coeffs,const, flag,_) =
  let earity = earity_of p in
  let print_plus = ref false in
  (for i=0 to earity-1 do
     let s = string_of_monomial p monomials i in
     let k = coeffs.(i) in
     if k=0 then ()
     else
       (if k>0 then
          (if !print_plus then print_string " + ";
           if k>1||s="" then print_int k)
        else
          (print_string " -";
           if k< -1 then (print_string " "; print_int(abs(k))));
        print_string s;
        print_plus := true)
   done;
   let k = const in
   if k=0 then ()
   else
     (if k>0 then if !print_plus then print_string " + " else ()
      else print_string " - ";
      print_int (abs k));
   if flag then print_string " > 0"
   else print_string " < 0")

let rec print_conj_aux p monomials qc op default =
  match qc with
    [] -> print_string default
  | (q,b)::qc'->
     if b then
       (print_string op; print_qual p monomials q; print_conj_aux p monomials qc' " /\\" "")
     else
       print_conj_aux p monomials qc' op default

let print_bmonos p conj op =
  let bms = bmonomials_of p in
  let bc = List.combine bms conj in
  let pre = ref "" in
  List.iter
    (fun (bm, b) ->
      if b then
        (print_string (!pre^(string_of_bmono bm));
         pre := op)
      else ())
    bc
    
let print_conj p monomials quals conj =
  let (conj2, conj1) = Util.list_split conj (List.length conj - List.length quals) in
  let qc = List.combine quals conj1 in
  if List.exists (fun b->b) conj2 then
    (print_bmonos p conj2 "/\\";
     print_conj_aux p monomials qc "/\\" "")
  else 
    print_conj_aux p monomials qc "" "true"
  
let rec print_dnf p monomials quals dnf flag =
  match dnf with
    [] -> print_string "false"
  | [conj] ->
     if flag then print_string "(";
     print_conj p monomials quals conj;
     if flag then print_string ")";
  | conj::dnf' ->
     (print_string "(";
      print_conj p monomials quals conj;
      print_string ")\\/";
      print_dnf p monomials quals dnf' true)


let output_log_qual fp1 fp0 p (coeffs,const,flag,priority) =
  let fp = if priority=1 then fp1 else fp0 in
  let earity = earity_of p in
  (for i=0 to earity-1 do
    let c = if flag then coeffs.(i) else -coeffs.(i) in
    output_string fp ((string_of_int c)^", ")
   done;
   let c = if flag then const else -const in
   output_string fp (string_of_int c);
   output_string fp "\n"
  )

let smtstring_of_int x =
  if x<0 then
    "(- "^(string_of_int (-x))^")"
  else string_of_int x

let qual2smt p monomials (coeffs,const, flag,_) =
  let earity = earity_of p in
  let args = ref [] in
  for i=0 to earity-1 do
    let s = smtstring_of_monomial p monomials i in
    let k = coeffs.(i) in
    if k=0 then ()
    else
      (let s0 = smtstring_of_int k in
       args := ("(* "^s0^" "^s^")")::!args);
  done;
  let k = const in
  if k = 0 then ()
  else args := (smtstring_of_int k)::!args;
  let s = if List.length !args<2 then List.hd !args
          else ("(+ "^(String.concat " " !args)^")")
  in
  if flag then "(> "^s^" 0)"
  else "(< "^s^" 0)"
      

let output_dnf fp p monomials quals dnf =
  let bms = bmonomials_of p in
  let dnf' =
    List.map (fun conj ->
        let (conj2, conj1) =
          Util.list_split conj (List.length conj - List.length quals) in
        let l1 = List.filter (fun (_,b) -> b)
                   (List.combine quals conj1) in
        let l2 = List.filter (fun (_,b)->b)
                   (List.combine bms conj2) in
        (l1, l2)) dnf
  in
  let (ql,bl) =
    List.fold_left
      (fun (ql,bl) (l1,l2) ->
        (List.fold_left
           (fun l1 (q,_) -> if List.mem q l1 then l1 else q::l1) ql l1,
         List.fold_left
           (fun l2 (bm,_)-> if List.mem bm l2 then l2 else bm::l2) bl l2))
      ([], [])
      dnf'
  in
  List.iter (fun q -> output_string fp ((qual2smt p monomials q)^"\n")) ql;
  List.iter (fun bm -> output_string fp ((bm2smt bm)^"\n")) bl
  
let print_predicates() =
  let fp = if !outsmt then open_out !smtfile else stdout in
  Hashtbl.iter
    (fun p dnf ->
      let quals = Hashtbl.find qualtab p in
      let monomials = monomials_of p in
      print_string (p^": ");
      print_dnf p monomials quals dnf false;
      print_string "\n";
      if !outsmt then
        (output_string fp ("; "^p^"\n");
         output_dnf fp p monomials quals dnf)
    )
    predtab;
  if !outsmt then close_out fp

let output_qual2smt() =  
  let fp = open_out !smtfile in
  Hashtbl.iter
     (fun p quals ->
      let monomials = monomials_of p in
      let l = List.map (qual2smt p monomials) quals in
      output_string fp ("; "^p^"\n");
      List.iter (fun s -> output_string fp (s^"\n")) l;
      let bms = bmonomials_of p in
      List.iter (fun bm -> output_string fp ((bm2smt bm)^"\n")) bms
     )
     qualtab;
  close_out fp

let print_qualifiers() =
  let (fp1,fp0) =
    match !log_qual with
      Some(file) -> (open_out (file^"1.csv"), open_out (file^"0.csv"))
    | None -> (stdout, stdout) (* dummy *)
  in
 ( Hashtbl.iter
    (fun p quals ->
      let monomials = monomials_of p in
      print_string (p^":\n");
      if not(!log_qual=None) then
        (output_string fp1 (p^":\n");output_string fp0 (p^":\n");
         List.iter (fun q -> output_log_qual fp1 fp0 p q) quals
        );
      List.iter (fun q -> (print_qual p monomials q; print_string "\n")) quals;
      print_string "\n")
    qualtab;
   if not(!log_qual=None) then (close_out fp1; close_out fp0)
 )
      
