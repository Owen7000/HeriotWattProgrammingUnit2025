let isEven n = 
  if (n mod 2) = 0 then
    true 
  else
    false;;

let isOdd n = not (isEven n);;

let rec collatz n = 
  if n = 1 then
    1 
  else if isEven n then
    collatz (n/2) 
  else 
    collatz (3*n + 1);;