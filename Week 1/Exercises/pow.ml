(* let's define pow m n where pow m n = m ^ n *)
let rec pow m n = 
  if n = 0 then 
    1
  else
    (pow m (n-1)) * m;;

pow 2 0;;
pow 2 5;;
pow 2 10;;