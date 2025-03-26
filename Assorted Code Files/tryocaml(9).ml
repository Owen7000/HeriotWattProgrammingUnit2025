let rec filter p xs = match xs with 
  | [] -> []
  | (x :: xs) -> if p x then x :: filter p xs else filter p xs ;;

let k = (>) 5;;

let rec map f xs = match xs with
  | [] -> []
  | (x :: xs) -> (f x) :: map f xs;; 


let g x = fun y -> x + y;;
let z = g 10;;


let small x ys = 
  filter ((>) x) ys;;


let pair f g x = (f x, g x);;

let add1 x y = x + y;;
let add2 p = let (x,y) = p in x + y;;

(add1 10) 50;;
add2 (10, 100);;

let add p = let (x,y) = p in x + y;;
let partialAdd x y = add (x,y);;

partialAdd 10;;
(partialAdd 10) 20;;

let curry f = fun x y -> f (x,y);;

((curry add) 10) 50;;

let rec map f xs = match xs with | [] ->[] | (x::xs) -> (f x) :: map f xs;;

let pAdd = curry add;;

let uncurry g = fun p -> let (x, y) = p in g x y;;