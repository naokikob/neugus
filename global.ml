open Torch
   
(* Global definitions and variables *)
type datum = Int of int | Bool of bool | Float of float
type kind = INT | BOOL | FLOAT
type atom = string * datum list
type vid = int
type monomial = Var of vid | NVar of vid | Mod of vid * int * int (* v mod n = k *)
                
type posconstr = atom
type negconstr = atom
type impconstr = atom list * atom list

type constr = posconstr list * negconstr list * impconstr list
type signature = (string, kind list * monomial list * monomial list) Hashtbl.t

(* parameters for learning *)
let numimp = ref 500
let distflag = ref false
let cnf = ref false
let dnf = ref false
let optimizer = ref 0  (* 0: Adam, 1:Sgd, 2: Rmsprop *)
let lossfun = ref 0 (* 0: log, 1:linear, 2: square with linear imp, 3: square *)
let hiddenfun = ref 1 (* 0: sigmoid, 1: tanh,  *)
let outfun = ref 0 (* 0: sigmoid, 1: sigmoid, 2: leaky_relu, 3: relu *)
let pos_w = ref 1. (* weights on loss functions: loss_all = !pos_w * poss + neg + !pos_i * imp *)
let pos_i = ref 1.
let scale = ref 1. (* factor to normalize input data *)         
let bias = ref false (* bias on 1st layer *)
let hidden_nodes = ref 32
let hidden_nodes2 = ref 4
let layers = ref 2
let learning_rate = ref 1e-3
let regularization = ref false
let regularization_factor = ref 1.0001
let regularization_factor2 = ref 0.
let regularization_const = ref 0.00001
let regularization_const2 = ref 0.002
let epochs = ref 30000
let global_vs = ref (Var_store.create ~name:"tmp" ())
let device = ref Device.Cpu
let loss_threshold = ref 1e-4
let cut_training = ref true
let retry = ref 3
let noimp = ref false
let cutimp = ref 20 (* cut too large implication constraints *)
let maxcoeff = ref 4
(* for logging *)
(* filename to save qualifiers *)          
let log_qual: string option ref = ref None
let conjqual = ref 1
(* filename to save/load NN *)
let save: string option ref = ref None          
let load: string option ref = ref None
(* whether the predicate is output to a separate smt file *)
let outsmt = ref false
let smtfile = ref ""
let outml = ref false
let mlfile = ref ""
(* for qualifier synthesis *)
(* how much of the weights should be taken into account *)                                
let ratio_extraction = ref 1.0
(* qualifier constant error bound: 
 * when a qualfier candidate a1x1+...anxn+ a0>0 is found, 
 * we add a1x1+...anxn+ a0>c as a candidate for all -e<= c <=e 
 *)
let qcerror = ref 1                     
(* required data
 *  -argument datatab: map from predicates to input data (tensor)
 *  - labtab: map from predicates to the current prediction for input data
 *  - constraints: each atom in the constraints is referred to as (pred, id) 
 *     where id is the index in the tensor of input data;
 *     for example, positive constraints are represented as a list [(pred1,id1); ...]
 *     implication consgtraints are as a list [([(pred1,id1);...], [(pred1',id1);...])]
 *  - bias info: map from predicates to lists of constant inputs [1;10;...]
 *  - signature: map from predicates to their types
 *  - reverse hash table for input data, which maps (pred,id) to the the concrete (typed) 
 *    input data [v1;..;vk]
 *     
 *)

type priority = int
(* qualifier: (coeffs, constant, flag): flag is true for > and false for < *)
type qualifier = int array * int * bool * priority
let priority_of_qual quals i =
  try let (_,_,_,p) = List.nth quals i in p
  with Failure _ -> 1
type dnfform = bool list list
let dualqual = ref true
let num_of_candidates = ref 5
let qualtab: (string, qualifier list) Hashtbl.t = Hashtbl.create 16;;
let predtab: (string, dnfform) Hashtbl.t = Hashtbl.create 16;;
(* biases added to input data *)           
let standard_biases = ref [1.]
(* whether "mod 2" constraint should be inferred *)
let mod2 = ref false                    
(* whether polynomial constraints should be inferred *)
let poly = ref false
let exptab: (string, int array array) Hashtbl.t = Hashtbl.create 16;;         
(* pred -> predicate-specific biases *)
let biastab: (string, float list) Hashtbl.t = Hashtbl.create 64                    
(* pred -> signature (i.e. list of kinds *)
let signatures: signature = Hashtbl.create 64
(* pred -> input data *)
let arity_of p =
  let (kinds,_,_) = Hashtbl.find signatures p in
  List.length kinds
let monomials_of p =
  let (_,monomials,_) = Hashtbl.find signatures p in monomials
let bmonomials_of p =
  let (_,_,bmonomials) = Hashtbl.find signatures p in bmonomials
let lookup_kinds (s: signature) p =
  let (kinds,_,_) = Hashtbl.find s p in kinds
let kinds_of p = lookup_kinds signatures p
               
let earity_of p =
  if !poly then
    2 * List.length (monomials_of p)
  else 
    List.length (monomials_of p)


(* map pred to (size, datatensor); 
 * we keep data occurring in positive, negative, and implication constraints separately
 * to facilitate the computation of loss functions
 *)
let datatab: (string, (int * Tensor.t * Tensor.t )*(int * Tensor.t * Tensor.t)*(int * Tensor.t * Tensor.t) ) Hashtbl.t = Hashtbl.create 64
(* pred -> model *)
let modeltab: (string, int * (Tensor.t -> Tensor.t -> Tensor.t) ) Hashtbl.t = Hashtbl.create 64
(* pred -> labes *)
let last_predictions: (string, (int * Tensor.t)*(int * Tensor.t)*(int * Tensor.t)) Hashtbl.t ref = ref (Hashtbl.create 16)
let last_miss = ref 0
let last_imp_miss = ref 0
let last_loss = ref 1.
let posc: atom list ref = ref []
let negc: atom list ref = ref []
let impc: (atom list * atom list) list ref = ref []
let constraints = (posc, negc, impc)
let num_of_constraints = ref 0
(* the id of atom; 
   it is assigned separately for those occurring in positive, negative, and implication constraints 
   the id is used as an index of the respective data tensor
*)
type atomid = P of int | N of int | I of int
let positives: (string * atomid) list ref = ref []
let negatives: (string * atomid) list ref = ref []
let implications: ((string * atomid) list * (string * atomid) list) list ref = ref []
let implications_rest: ((string * atomid) list * (string * atomid) list) list ref = ref []
(* list of (size, [(p1,m1);...;(pk,mk)],[(p1',m1');...;(pl',ml')]) where mi is a matrix *)
let implications_packed: (int * (string * Tensor.t) list * (string * Tensor.t) list) list ref = ref []
(* pred -> [v1;...;vk] -> (id, flag) *)
(* id is the identifier of the atom pred(v1,...,vk) *)
(* flag in {-1,0,1}: flag=1 (-1, resp.) means the atom occurs in a positive (negative, resp.) constraint *)
(*                   flag=0 means the atom occurs only in an implication constraint *)
let rawdatatab:
      (string, (datum list, atomid) Hashtbl.t) Hashtbl.t = Hashtbl.create 16
let id2rawdatatab: (string * atomid, datum list) Hashtbl.t = Hashtbl.create 256
let id_of_atom p args = let tab = Hashtbl.find rawdatatab p in Hashtbl.find tab args

let string_of_datum d =
    match d with
    Int(n) -> (string_of_int n)^" "
  | Bool(b) -> (string_of_bool b)^" "
  | Float(x) -> (string_of_float x)^" "

let string_of_dl dl =
  List.fold_left (fun s d -> s^" "^(string_of_datum d)) "" dl
  
let string_of_atom (p, a) =
  let dl = Hashtbl.find id2rawdatatab (p,a) in
   p^(string_of_dl dl)
let string_of_atomid id =
  match id with
    P(i) -> "P"^(string_of_int i)
  | N(i) -> "N"^(string_of_int i)
  | I(i) -> "I"^(string_of_int i)
                                                             
(* absmod always returns a positive number *)
(* Note: in ocaml, (-3) mod 2 = -1, but in SMT solver, (-3) mod 2 = 1 *)
let absmod n k = let x = n mod k in if x<0 then x+k else x

let string_of_bmono bm =
    match bm with
      Var(vid) -> "x"^(string_of_int vid)
    | NVar(vid) -> "~x"^(string_of_int vid)
    | Mod(vid,n,k) ->
       "(x"^(string_of_int vid)^" mod "^(string_of_int n)^"="^(string_of_int k)^")"
                                  
let string_of_monomial p monomials i =
  if !poly then
    let exponents = (Hashtbl.find exptab p).(i) in
    let s = ref "" in
    (for j=0 to Array.length(exponents)-1 do
      let m = List.nth monomials j in
      let s1 = 
        match m with
          Var(vid) -> let e = exponents.(j) in
                      if e=0 then ""
                      else if e=1 then "x"^(string_of_int vid)
                      else "x"^(string_of_int vid)^"^"^(string_of_int (exponents.(j)))
        | NVar(vid) -> "~x"^(string_of_int vid)
        | Mod(vid,n,_) -> "(x"^(string_of_int vid)^" mod "^(string_of_int n)^")^"^(string_of_int (exponents.(j)))
      in s := (!s)^s1
     done;
     !s)
  else
    let m = List.nth monomials i in
    string_of_bmono m

let bm2smt bm =
  match bm with
    Var(vid) -> "x"^(string_of_int vid)
  | NVar(vid) -> "x"^(string_of_int vid)
  | Mod(vid,n,k) ->
     if n=2 then
       if k>0 then
         "(> (mod x"^(string_of_int vid)^" "^(string_of_int n)^") 0)"
       else
         "(= (mod x"^(string_of_int vid)^" "^(string_of_int n)^") 0)"
     else
       "(= (mod x"^(string_of_int vid)^" "^(string_of_int n)^") "^(string_of_int k)^")"

let smtstring_of_kind k =
  match k with
    INT -> "Int"
  | BOOL -> "Bool"
  | FLOAT -> "Float"
    
let smtstring_of_monomial p monomials i =
  if !poly then
    let exponents = (Hashtbl.find exptab p).(i) in
    let s = ref [] in
    (for j=0 to Array.length(exponents)-1 do
      let m = List.nth monomials j in
      let s1 = 
        match m with
          Var(vid) -> let e = exponents.(j) in
                      if e=0 then ""
                      else if e=1 then "x"^(string_of_int vid)
                      else "(** x"^(string_of_int vid)^" "
                           ^(string_of_int (exponents.(j)))^")"
        | NVar(vid) -> "(not x"^(string_of_int vid)^")"
        | Mod(vid,n,k) -> "(= (mod x"^(string_of_int vid)^" "^(string_of_int n)^") "^(string_of_int k)^")"
      in s := s1::!s
     done;
     if List.length !s > 1 then 
       "(* "^(String.concat " " (!s))^")"
     else String.concat " " (!s)
    )
  else
    let m = List.nth monomials i in
    match m with
      Var(vid) -> "x"^(string_of_int vid)
    | NVar(vid) -> "(not x"^(string_of_int vid)^")"
    | Mod(vid,n,k) -> "(= (mod x"^(string_of_int vid)^" "^(string_of_int n)^") "^(string_of_int k)^")"
                  
let datum_to_float d =
  match d with
    Float(x) -> x
  | Int(n) -> Float.of_int n
  | Bool(b) -> if b then 1.0 else -1.0
                  
let value_of_monomial p args monomials i =
  if !poly then
    let exponents = (Hashtbl.find exptab p).(i) in
    let s = ref 1. in
    (for j=0 to Array.length(exponents)-1 do
      let m = List.nth monomials j in
        match m with
          Var(vid) ->
             let v = datum_to_float (List.nth args vid) in
             for _=0 to exponents.(j)-1 do
               s := !s *. v
             done
        | NVar(vid) -> let v = datum_to_float (List.nth args vid) in s := 0.0 -. v
        | Mod(vid,n,k) ->
           s := if absmod (Float.to_int (datum_to_float (List.nth args vid))) n=k
                then 1.0 else -1.0
     done;
     !s)
  else
    let m = List.nth monomials i in
    match m with
      Var(vid) -> datum_to_float (List.nth args vid)
    | NVar(vid) -> let v = datum_to_float (List.nth args vid) in 0.0 -. v
    | Mod(vid,n,k) ->
         if absmod (Float.to_int (datum_to_float (List.nth args vid))) n=k
         then 1.0 else -1.0
                  
let get_prediction_for_atom predictions_for_p id =
  match id with
    P(i) -> let ((_,pred),_,_) = predictions_for_p in
            Tensor.select pred ~dim:0 ~index:i
  | N(i) -> let (_, (_,pred),_) = predictions_for_p in
            Tensor.select pred ~dim:0 ~index:i
  | I(i) -> let (_, _, (_,pred)) = predictions_for_p in
            Tensor.select pred ~dim:0 ~index:i
  
                  
let get_prediction predictions (p,id) =
  let predictions_for_p = Hashtbl.find predictions p in
   get_prediction_for_atom predictions_for_p id

     
