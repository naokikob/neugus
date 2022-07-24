let rec sum n =
  (*  assert(n>=0);*)
  if oracle(n) then 0 else n+sum(n-1)

let sumspec n =
  if n<=0 then 0 else n*(n+1)/2
let main n = assert(sum n = sumspec n)

