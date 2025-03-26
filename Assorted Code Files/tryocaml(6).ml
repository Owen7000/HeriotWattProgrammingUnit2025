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