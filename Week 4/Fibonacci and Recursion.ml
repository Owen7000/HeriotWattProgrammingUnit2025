let rec sum n = if n = 0 then 0 else n + sum (n - 1);;

let add10 f x = x + 10;;

(* This function counts how long another function takes to execute *)
let time f x = 
  let t = Sys.time() in
  let fx = f x in 
  Printf.printf "execution time: %fs\n" (Sys.time() -. t);
  fx
  

(* This does cause a stack overflow *)
let rec npow n k = if k = 0 then 1 else n * (npow n (k-1));; 

(* This does not cause a stack overflow *)
let pow n k = 
  let rec iterpow n k acc = 
    if k = 0 
    then acc
    else iterpow n (k - 1) (n * acc)
  in iterpow n k 1;;

(* Fast power *)
let rec fpow n k = 
  if k = 0
  then 1
  else if k mod 2 = 0
  then fpow (n * n) (k / 2)
  else fpow (n * n) (k / 2) * n;;


let rec fib n =
  if n = 0
  then 0
  else if n = 1
  then 1
  else fib (n-1) + fib (n-2);;

let rec fib2 n = 
  if n < 2
  then n 
  else fib2 (n-1) + fib(n-2);;

(* Fast Fibonacci *)
let step p = let (a,b) = p
  in (b, a+b);;

let rec apply n p = if n = 0 
  then p
  else apply (n-1) (step p) ;;

let ffib n = let (x, _) = apply n (0, 1)
  in x;;