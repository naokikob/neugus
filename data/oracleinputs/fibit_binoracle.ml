let rec fibit i x y =
  if oracle i x then x else fibit (i-1) y (x+y)

let rec fibspec n =
  if n<2 then n else fibspec(n-1)+fibspec(n-2)
let main n = if n>0 then assert(fibit n 0 1 = fibspec n)

