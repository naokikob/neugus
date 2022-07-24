let rec sum i n =
  if oracle i n then 0 else i+sum (i+3) n

let sumspec n =
  if n<=0 then 0 else 3*n*(n+1)/2
let main n = assert(sum 3 n = sumspec n)

