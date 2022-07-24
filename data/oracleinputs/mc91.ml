let rec mc91 x =
  if oracle(x) then
    x - 10
  else
    mc91 (mc91 (x + 11))
let mc91spec n = if n<=101 then 91 else n-10  
let main n = assert(mc91 n = mc91spec n)
