1 :: [2;3;4];;

let x = [1;2;3;4] in
let y = 1 :: [2;3;4] in
x = y;;


1 :: (2 :: (3 :: (4 :: [])));; 

let rec addToEnd x xs = match xs with
  | [] -> [x]
  | (y :: ys) -> y :: (addToEnd x ys);;


addToEnd 5 [1;2;3;4];; (* Add to the end of the list *)
5 :: [1;2;3;4];; (* Add to the start of the list *) 
  
addToEnd 3 [1;2;];;
addToEnd 3 [1;2];;


let rec append xs ys = 
  match xs with
  | [] -> ys
  | (z :: zs) -> z :: (append zs ys);;

let rec append' xs ys =
  match ys with
  | [] -> xs 
  | z :: zs -> z :: (append' xs zs);;