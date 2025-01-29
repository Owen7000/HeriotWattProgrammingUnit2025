(* Greatest Common Divisor - GCD *)

let rec gcd m n = 
  if n = 0 then
    m 
  else gcd n (m mod n);; 

let isEven n = 
  if (n mod 2) = 0 then
    true 
  else
    false;;

isEven 1;;     
isEven 2;;

let isOdd n = not (isEven n);;

isOdd 1;;
isOdd 2;; 

let rec collatz n = 
  if n = 1 then
    1 
  else if isEven n then
    collatz (n/2) 
  else 
    collatz (3*n + 1);;

collatz 5;;

let lcm m n = m * n / (gcd m n);;




(* -- Calculate whether or not a given integer `o` is a prime -- *)
let divides k n = n mod k = 0;;

(* Test the divides function*)
divides 6 30;; (* Should be true; actual = true *)
divides 7 30;; (* Should be false; actual = false *)

let rec noDivisorsFrom m n = 
  if m = n-1 then 
    not (divides (n-1) n)
  else 
    not (divides m n) && noDivisorsFrom(m+1) n;;

(* Test the noDF function *)
noDivisorsFrom 6 7;;
noDivisorsFrom 5 7;;
noDivisorsFrom 4 7;;
noDivisorsFrom 2 8;;

let dnd k n = not (n mod k = 0);;

(* Test dnd *)
dnd 7 10;;
dnd 7 14;;

(* New NoDF function (Same as old one but with different name for some reason) *)
let rec noDF m n =
  if m = n-1 then
    dnd (n-1) n
  else dnd m n && noDF (m+1) n;;

(* Test the noDF function *)
noDF 3 5;; 


(* let's define pow m n where pow m n = m ^ n *)
let rec pow m n = 
  if n = 0 then 
    1
  else
    (pow m (n-1)) * m;;

pow 2 0;;
pow 2 5;;
pow 2 10;;