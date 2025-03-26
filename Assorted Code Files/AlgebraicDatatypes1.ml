type week = Mon
          | Tue
          | Wed
          | Thu
          | Fri
          | Sat
          | Sun;;


let f (x : int) : int = match x with
  | 0 -> 1
  | 1 -> 2;;


(* dayOfWeek : week -> int *)
let dayOfWeek (w: week) : int = match w with
  | Mon -> 0
  | Tue -> 1
  | Wed -> 2
  | Thu -> 3
  | Fri -> 4
  | Sat -> 5
  | Sun -> 6;;

dayOfWeek Mon;; 
dayOfWeek Tue;;
dayOfWeek Wed;;
dayOfWeek Thu;;
dayOfWeek Fri;;
dayOfWeek Sat;; 
dayOfWeek Sun;; 


type direction = N | E | S | W;;
(N, "North");;
[ N; S; E; W ];;


type fort = week * bool;;


(* Writing functions on enumeration types *)
let opposite (d: direction) : direction = 
  match d with
  | N -> S
  | S -> N
  | E -> W
  | W -> E;;

let dirs = [ N; S; E; W;];;

let rec map f xs = match xs with
  | [] -> []
  | (x :: xs) -> (f x) :: map f xs;;

opposite N;;
opposite S;;
opposite E;;
opposite W;;

type coord = int * int;;

let move (c : coord) (d : direction) : coord = 
  match c with (cx, cy) ->
    match d with 
    | N -> (cx + 0, cy + 1)
    | E -> (cx + 1, cy + 0)
    | S -> (cx + 0, cy - 1)
    | W -> (cx - 1, cy + 0)
;;

move (0, 0) N;;
move (0, 1) E;;

let rec moves (c : coord) (ds : direction list) : coord =
  match ds with 
  | [] -> c
  | (d :: ds) -> let c' = move c d in 
      moves c' ds;;

(* Should return (0,0) *)
moves (0,0) [N;N;N;E;S;S;S;W];;