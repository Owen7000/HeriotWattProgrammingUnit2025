(* let x = 4 in
 (let x = 8 in x) + x;; *)

let x = 1;;

(* This is aa example of a 'free variable' or 'open term' on x.*)
let y = 10 in
(let z = y + x in z);;


(* Strings *)
let x = "abc";;
let y = "xyz";;

(* Tuples *)
(4, "string");; 
(4, (true, 5.4));; 
(2+4, true);;


(* Taking as input: Deconstruction *)
let fst p = let (x, y) = p in x;;
let snd p = let (x, y) = p in y;;
(* Returning a tuple: Construction *) 
let f n = (n, n+1, n+2);;

let swap p = 
  let x = fst p in
  let y = snd p in
  (y, x);;

swap(4, "hi");;

(* Takes a tuple with three values and adds one to each *)
let addOneAll t = let (x,y,z) = t in (x+1, y+1, z+1);; 
addOneAll(1,2,3);;

(* Get the highest value and returns it *)
let max2 p = let (x,y) = p in (if x<y then y else x);;
max2(2, 0);;


(* Factorial *)
let rec fact n = if n = 0 then 1 else n * fact (n-1);; 
fact 10;;

let rec nsum n = if n = 0 then 0 else n + nsum (n-1);;
let sum = nsum;;

sum 100;;



(* accumSum *)
let rec accumSum p = let (acc, n) = p in
  if n = 0 
  then acc
  else accumSum(acc + n, n-1);;

accumSum (0, 10);; (* Result = 55 *) 
                   
                   
nsum 100000000;;

let fsum n = accumSum (0, n);;
(*fsum 100000000;;*)


let rec p1 n k = if k = 0 then 1 else n * p1 n (k-1);;

let rec p2 p = let (n,k) = p in if k = 0 then 1 else n * p2 (n,k-1);;

p2 (2, 10);;
