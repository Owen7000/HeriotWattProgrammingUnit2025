let isEven n = 
  if (n mod 2) = 0 then
    true 
  else
    false;;

let isOdd n = not (isEven n);;

isOdd 1;;
isOdd 2;;