type primtype = Circle | Rectangle
type coord = float * float;;

(* Circ consists of a float and a coord. Rect consists of coord and coord*)
type shape = Circ of float * coord
           | Rect of coord * coord;;

let abs f = if f < 0.0 then -1.0 *. f else f;;
abs (-1.5);;

Circ(1.0, (0.0, 0.0));;
Circ(2.0, (0.0, 0.0));;

Rect ((0.0,0.0), (1., 2.));;

let area (s : shape) : float = match s with
  | Circ (r, (cx, cy)) -> 3.14 *. r *. r
  | Rect ((x1, y1), (x2, y2)) -> 
      abs((x2 -. x1)) *. abs((y2 -. y1));;


let s1 = Circ(1.0, (0.0, 0.0));;
let s2 = Circ(2.0, (2.0, 5.2));;

area s1;;
area s2;;

let s3 = Rect((0.0,0.0),(1.0,4.0));; (**Not square *)
let s4 = Rect((0.0,0.0),(4.0,4.0));; (* Square*)

area s3;;

let isSquare s = match s with
  | Circ _ -> false
  | Rect ((x1, y1), (x2, y2)) -> abs(x2 -. x1) = abs (y2 -. y1);;

let rec length xs = match xs with 
  | [] -> 0
  | (_ :: xs) -> 1 + length xs;;

isSquare s1;;
isSquare s2;;
isSquare s3;;
isSquare s4;;


(* Safe Failing *)
type maybeInt = Just of int | Nothing;;

let safeDiv m n = if n != 0 
  then Just(n/n)
  else Nothing;;

safeDiv 10 2;;
safeDiv 10 0;;

let safeAdd (m : maybeInt) (n : maybeInt) : maybeInt = 
  match m, n with
  | Just x,  Just y  -> Just (x+y)
  | _ , _ -> Nothing
;;

safeAdd (Just 1) (Just 5);;
safeAdd (Just 1) (safeDiv 10 2);;
safeAdd (safeDiv 10 5) (safeDiv 10 0);;


