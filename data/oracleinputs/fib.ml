let rec fibit i x y =
  if i<1 then x else fibit (i-1) y (x+y)

let rec fib n =
  if oracle n then n else fib(n-1)+fib(n-2)
let main n = if n>=0 then assert(fibit n 0 1 = fib n)

