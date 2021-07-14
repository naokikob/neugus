open Global
   
(* convert data for a single predicate to multi-predicate data *)               
let convert pred positives negatives implications =
  let n = let args = try List.nth positives 0
                     with _ ->
                       try List.nth negatives 0
                       with _ ->
                             try let (nl,pl) = List.nth implications 0 in
                                 List.nth (nl@pl) 0
                             with _ -> []
          in List.length args
  in
  let signature = let tab = Hashtbl.create 10 in (Hashtbl.add tab pred (List.init n (fun _ -> INT)); tab)
  in
  let posconstr = List.map (fun p -> (pred, List.map (fun n-> Int(n)) p)) positives in
  let negconstr = List.map (fun p -> (pred, List.map (fun n-> Int(n)) p)) negatives in
  let impconstr = List.map (fun (nl,pl) -> (List.map (fun a -> (pred,List.map (fun n-> Int(n)) a)) nl,
                                            List.map (fun a -> (pred,List.map (fun n-> Int(n)) a)) pl))
                    implications
  in
    (signature, (posconstr,negconstr,impconstr))
               
let output_kind fp k =
  match k with
    INT -> output_string fp "Int "
  | BOOL -> output_string fp "Bool "
  | FLOAT -> output_string fp "Float "
              
let output_fundecl fp p kinds =
  (output_string fp (p^" ");
   List.iter (output_kind fp) kinds;
   output_string fp "\n")
              
let output_sig fp s =
  (output_string fp "Signature:\n";
   Hashtbl.iter (fun p (kinds,_,_) -> output_fundecl fp p kinds) s)

let output_datum fp d =
  match d with
    Int(n) -> output_string fp ((string_of_int n)^" ")
  | Bool(b) -> output_string fp ((string_of_bool b)^" ")
  | Float(x) -> output_string fp ((string_of_float x)^" ")

let output_args fp d =
  (print_string "["; List.iter (output_datum fp) d; print_string "]\n")
              
let output_atom fp (p, args) =
  (output_string fp (p^" ");
   List.iter (output_datum fp) args)
  
let output_posc fp (p, args) =
  (output_string fp ("P ");
   output_atom fp (p, args);
   output_string fp "\n")
  
let output_negc fp (p, args) =
  (output_string fp ("N ");
   output_atom fp (p, args);
   output_string fp "\n")

let output_impc fp (nl, pl) =
  (output_string fp ("I ");
   List.iter (output_atom fp) nl;
   output_string fp ("=> ");
   List.iter (output_atom fp) pl;
   output_string fp "\n")
  
let output_constr_aux fp (pc,nc,ic) =
  (List.iter (output_posc fp) pc;
   List.iter (output_negc fp) nc;
   List.iter (output_impc fp) ic)
let output_constr fp (pc,nc,ic) =
  (output_string fp "Constraints:\n";
   output_constr_aux fp (pc,nc,ic))
   
let output_alldata (s: signature) (c: constr) filename =
  let fp = open_out filename in
  (output_sig fp s;
   output_constr fp c;
   close_out fp)

exception BadInput of string
exception Done

(* read signatures from input file *)        
let input_sig fp tab =
  let s = input_line fp in
  if not(s = "Signature:") then
    raise (BadInput s)
  else
    ((try
       while true do
         let s = input_line fp in
         let sl = (List.filter (fun x -> not (x = "")) (String.split_on_char ' ' s)) in
         match sl with
           [] -> raise (BadInput "b")
         | p::kindstrings ->
            if p="Constraints:" then raise Done
            else if String.sub s 0 1 =";" then ()
            else
              let kinds = (List.map
                             (fun k-> if k="Int" || k="int" then INT
                                      else if k="Bool" || k="bool" then BOOL
                                      else if k="Float" || k="float" then FLOAT
                                      else raise (BadInput k))
                             kindstrings)
              in
              let arity = List.length kinds in
              let (monomials,bmonomials)  =
                let var_ids = List.init arity (fun x->x) in
                let kvs = List.combine kinds var_ids in
                  List.fold_right
                    (fun (kind,vid) (ms,bms) ->
                      match kind with
                        INT ->
                         if !mod2 then
                           (Var(vid)::ms, Mod(vid, 2,0)::Mod(vid, 2,1)::bms)
                         else 
                           (Var(vid)::ms, bms)
                      | BOOL -> (ms, Var(vid)::NVar(vid)::bms)
                      | FLOAT -> (Var(vid)::ms, bms)
                    )
                    kvs
                    ([], [])
              in
              Hashtbl.replace tab p (kinds, monomials, bmonomials)
       done
     with Done -> ());
     tab)

let read_atom tab sl =
  match sl with
    [] -> raise (BadInput "Empty atom")
  | p::sl' ->
     let kinds = try lookup_kinds tab p with Not_found -> raise (BadInput p) in
     let arity = List.length kinds in
     let indices = List.init arity (fun x->x) in
     let args = 
       List.map
         (fun i -> 
           let kind = List.nth kinds i in
           let arg = List.nth sl' i in
           match kind with
             INT -> Int(int_of_string arg)
           | BOOL -> if arg="true" then Bool(true) else Bool(false)
           | FLOAT -> Float(float_of_string arg))
         indices
     in ((p, args), Base.List.drop sl' arity)

let rec read_negs tab sl =
  match sl with
    [] -> raise (BadInput "empty implications")
  | "=>"::sl' -> ([], sl')
  | _ -> let (a,sl') = read_atom tab sl in
         let (al,sl'') = read_negs tab sl' in
         (a::al, sl'')

let rec read_poss tab sl =
  match sl with
    [] -> []
  | _ -> let (a,sl') = read_atom tab sl in
         let al = read_poss tab sl' in
         a::al
         
let rec input_constr fp tab posc negc impc =
  try
    let s = input_line fp in
    let sl = (List.filter (fun x -> not (x = "")) (String.split_on_char ' ' s)) in
    match sl with
      [] -> input_constr fp tab posc negc impc
    | tag::sl' ->
       match tag with
         "P" -> let (a,_) = read_atom tab sl' in
              input_constr fp tab (a::posc) negc impc
       | "N" -> let (a,_) = read_atom tab sl' in
              input_constr fp tab posc (a::negc) impc
       | "I" -> let (pc,sl) = read_negs tab sl' in
              let nc = read_poss tab sl in
              input_constr fp tab posc negc ((pc,nc)::impc)
       | s -> let s0 = String.sub s 0 1 in
              if s0=";" then input_constr fp tab posc negc impc
              else if s0="E" then raise End_of_file
              else (print_string ("Bad input: "^s^"\n"); assert false)
  with End_of_file -> (posc,negc,impc)

let input_alldata filename signatures (posc,negc,impc) =
  try
  let fp = open_in filename in
  let _ = input_sig fp signatures in
  let constr = input_constr fp signatures [] [] [] in
  let _ =  close_in fp in
  let (pc,nc,ic)= constr in
  (posc := List.sort_uniq compare (!posc@pc);
   negc := List.sort_uniq compare (!negc@nc);
   impc := List.sort_uniq compare (!impc@ic))
  with BadInput s -> (print_string ("Bad input: "^s^"\n"); assert false)
