(* Factorials *);;

(* The "incorrect" way to do it. This doesn't work! *);;
(* let factorial n = if n = 0 then 1 else n * (factorial (n-1));; *);;

(* The correct way to do it! *);;
let rec fact n = if n = 0 then 1 else n * (fact (n-1));;

fact 0;;
fact 1;;
fact 2;;
fact 3;;
fact 4;;
fact 5;;


let rec fact n =
  if n = 0 then
    1 
  else n * (fact(n - 1));;    

fact 0;;
fact 1;;
fact 2;;
fact 3;;
fact 4;;
fact 5;;


(* Greatest Common Divisor - GCD *)

let rec gcd m n = 
  if n = 0 then
    m 
  else gcd n (m mod n);;

gcd 10 0;; 
gcd 18 27;; (* "Just works. Wow, magic" - Swaraj Dash 22/01/2025 *);;
gcd 27 18;;
gcd 27 0;;
gcd 100 10;;