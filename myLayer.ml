open Torch
   
let poly vs ?w_init ~input_dim output_dim =
  let w =
    let shape = [ output_dim; input_dim ] in
    match w_init with
    (*    | None -> Var_store.new_var vs ~shape ~init:(Normal {mean=1.0; stdev=1.5}) ~name:"exponent" *)
    | None -> Var_store.new_var vs ~shape ~init:(Uniform (-1., 3.)) ~name:"exponent"
    | Some init -> Var_store.new_var vs ~shape ~init ~name:"exponent"
  in
  let apply =
       fun xs -> Tensor.(exp (mm (log xs) (tr w))) 
  in
    apply 

let l_nor vs ?w_init ~input_dim output_dim =
  let w =
    let shape = [ output_dim; input_dim ] in
    match w_init with
    (*    | None -> Var_store.new_var vs ~shape ~init:(Normal {mean=1.0; stdev=1.5}) ~name:"exponent" *)
    | None -> Var_store.new_var vs ~shape ~init:(Uniform (0., 2.)) ~name:"weight"
    | Some init -> Var_store.new_var vs ~shape ~init ~name:"weight"
  in
  let apply =
    fun xs ->
    let n = List.hd (Tensor.size xs) in
    let xs' = Tensor.reshape xs ~shape:[n; 1; input_dim] in
    let u = Tensor.(sigmoid (f 8.0 * (f 2.0 - xs' * w))) in
    Tensor.(prod_dim_int u ~dim:2 ~keepdim:false ~dtype:(T Float))
  in
    apply 

let l_or vs ?w_init ~input_dim output_dim =
  let w =
    let shape = [ output_dim; input_dim ] in
    match w_init with
    (*    | None -> Var_store.new_var vs ~shape ~init:(Normal {mean=1.0; stdev=1.5}) ~name:"exponent" *)
    | None -> Var_store.new_var vs ~shape ~init:(Uniform (0., 2.)) ~name:"weight"
    | Some init -> Var_store.new_var vs ~shape ~init ~name:"weight"
  in
  let apply =
    fun xs ->
    let n = List.hd (Tensor.size xs) in
    let xs' = Tensor.reshape xs ~shape:[n; 1; input_dim] in
    let u = Tensor.(sigmoid (f (8.0) * (f 2.0 - xs' * w))) in
    Tensor.(f 1.0 - prod_dim_int u ~dim:2 ~keepdim:false ~dtype:(T Float))
  in
    apply 
      
