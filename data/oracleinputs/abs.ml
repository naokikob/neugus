let abs n = if oracle(n) then n else -n
let main n = assert(abs(n)>=0)
