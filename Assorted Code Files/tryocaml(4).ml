let isEven n = n mod 2 = 0;;

let rec filterEvens xs = match xs with
  | [] -> []
  | (y :: ys) -> 
      if isEven y 
      then y :: (filterEvens ys)
      else filterEvens ys
          
  
let isOdd n = n mod 2 = 1;;

let rec filterOdds xs = match xs with 
  | [] -> [] 
  | (y :: ys) -> 
      if isOdd y
      then y :: (filterOdds ys)
      else filterOdds ys;;


let rec filter (p : 'a -> bool) (xs  : 'a list) = 
  match xs with 
  | [] -> []
  | (y :: ys) -> 
      if p y 
      then 
        y :: (filter p ys)
      else
        filter p ys
          
  
let rec append xs ys = match xs with
  | [] -> []
  | (z :: zs) -> z :: (append zs ys);;

(* Broken *)
let rec qsort xs = match xs with
  | [] -> []
  | (y :: ys) -> 
      let lessThan k m = k < m in 
      let greaterThan k m  = k >= m in
      let smallerThan z = filter (lessThan z) ys in
      let greaterThan z = filter (greaterThan z) ys in
      
      append (qsort (smallerThan y)) (y :: qsort (greaterThan y));;
      



let rec doubleElems xs = match xs with
  | [] -> []
  | (y :: ys) -> (2*y) :: doubleElems ys;;  

let rec tripleElems xs = match xs with
  | [] -> []
  | (y :: ys) -> (3*y) :: tripleElems ys;;  


let rec map f xs = match xs with
  | [] -> []
  | (y :: ys) -> (f y) :: map f ys;;

let double n = n * 2;;

(* map double [1;2;3;4;5] = [2;4;6;8;10] *) 

let add x y = x + y;;
let mul x y = x * y;;
let plusOne x y = y + 1;;

(* Tail recursive *)
let rec sumT xs = 
  let rec helper ys acc = match ys with
    | [] -> acc
    | (z :: zs) -> helper zs (add z acc)
  in helper xs 0;;

let rec prodT xs = 
  let rec helper ys acc = match ys with
    | [] -> acc
    | (z :: zs) -> helper zs (mul z acc)
  in helper xs 1;; 




let rec sum xs = 
  match xs with
  | [] -> 0
  | (y :: ys) -> add y (sum ys);;

let rec product xs = 
  match xs with
  | [] -> 1
  | (y :: ys) -> mul y (product ys);;

let rec length xs = 
  match xs with
  | [] -> 0
  | (y :: ys) -> plusOne y (length ys);;


(* Not tail-recursive *)
let rec foldL v f xs = match xs with 
  | [] -> v
  | (y :: ys) -> f y (foldL v f ys);;

(* Tail-recursive *)
let rec foldR v f xs = match xs with
  | [] -> v
  | (y :: ys) -> foldR (f y v) f ys

(* 
   fold 0 add [1;2] = 
   add 1 (fold 0 add [2])
   = add 1 (add 2 (fold 0 add [])
   = add 1 (add 2 (0))
   = add 1 (2)
   = 3
*)

let sumOneLine xs = foldR 0 add xs;;
let prodOneLine xs = foldR 1 mul xs;; 
let length xs = foldR 0 plusOne xs;;

let sumOneLineT xs = foldL 0 add xs;;
let prodOneLineT xs = foldL 1 mul xs;; 
let lengthT xs = foldL 0 plusOne xs;;