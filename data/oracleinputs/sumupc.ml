let rec sum i n =
  if i>n then 0 else (if oracle i then i else n)+sum (i+1) n

let sumspec n =
  if n<=0 then 0 else n*(n+1)/2
let main n = assert(sum 1 n = sumspec n)

