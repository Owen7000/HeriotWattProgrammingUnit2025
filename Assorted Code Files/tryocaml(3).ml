let addToStart (x : 'a)(xs : 'a list) = 
  match xs with
  | []        -> x :: []
  | (y :: ys) -> x :: (y :: ys) ;;

let a2s (x : 'a) (xs : 'a list) = x :: xs;;

(* Cons operator = :: *)
(* Cons = Add to start *)


let rec a2e x xs = match xs with
  | [] -> x :: []
  | (y :: ys) -> y :: (a2e x ys);;



let isEmpty xs = match xs with
  | [] -> true
  | (_ :: _) -> false;;



(* - Length of list - *)
(* length: 'a list -> int *)
let rec length xs = match xs with
  | [] -> 0
  | (_ :: ys) -> (length ys) + 1


let rec createList n = 
  if n = 0
  then []
  else 4 :: (createList (n-1));;

(* - Reverse a list - *)
let rec rev xs = match xs with
  | [] -> []
  | (y :: ys) -> a2e y (rev ys);;


(* - Add numbers to a list - *)
let rec sum xs = match xs with
  | [] -> 0
  | (y :: ys) -> y + sum ys;;


(* - Multiply all items in a list together - *)
let rec mult xs = match xs with
  | [] -> 1
  | (y :: ys) -> y * mult ys;;


(* - Zipping a list - *)

(* - nth number in a list - *)
let rec nth xs n = match xs with
  | [] -> -1
  | (y :: ys) -> if n = 0
      then y
      else
        nth ys (n-1);;


(* - Find if number is present in a list - *)
let rec find (x : 'a)(xs : 'a list) : bool =
  match xs with
  | [] -> false
  | (y ::ys) -> if x = y 
      then true
      else find x ys;;


(* - Where is x? - *)
let rec whereis x xs = 
  match xs with
  | [] -> -1
  | (y :: []) -> 
      if x = y then 0 
      else -2
  | (y :: ys) -> 
      if x = y then 0
      else 1 + (whereis x ys);;


let rec uptoN n = if n = 1
  then [1]
  else n :: (uptoN (n-1));;

let fact n = mult(uptoN n);;

(* - Append to list - *)
let rec app xs ys = match xs with
  | [] -> ys
  | (z :: zs) -> z :: (app zs ys);;

(* - Reverse a list using append - *)
let rec rev2 xs = match xs with
  | [] -> []
  | (y :: ys) -> app (rev2 ys) [y];;


let a2e2 x xs = app xs [x];;
let rec app2 xs ys = match ys with
  | [] -> xs
  | (z :: zs) -> app2 (a2e z xs) zs;;


let revT xs = 
  let rec revAux ys stack = 
    match ys with
    | [] -> stack
    | (z :: zs) -> revAux zs (z :: stack)
  in revAux xs [];;
  
(* Idiomatic for Swaraj *)
let addPair p = match p with
  | (x, y) -> x + y;;


(* Idiomatic in Haskell *)
let addPair2 (x, y) = x + y;;


let rec zip xs ys = match xs, ys with
  | [], [] -> []
  | (x :: xs) , (y :: ys) -> (x,y) :: zip xs ys;;