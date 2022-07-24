let rec sum i n =
  if oracle i n then 0 else n+sum i (n-1)

let sumspec n =
  if n<=0 then 0 else n*(n+1)/2
let main n = assert(sum 1 n = sumspec n)

