let rec foldR v f xs = match xs with
  | [] -> v
  | (y :: ys) -> f y (foldR v f ys);; 

(* 
   fold 0 add [1;2] = 
   add 1 (fold 0 add [2])
   = add 1 (add 2 (fold 0 add [])
   = add 1 (add 2 (0))
   = add 1 (2)
   = 3
*)

(* let plusOne x y = y + 1 is the same as *)
let plusOne = fun x y -> y + 1

let sum xs = foldR 0 (+) xs;;
let prod xs = foldR 1 ( * ) xs;; 
let length xs = foldR 0 (fun x y -> y + 1) xs;; 