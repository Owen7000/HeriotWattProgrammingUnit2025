(* This is the one provided in the doc *)
let myOr p q = if p then true else q;;
      
(* My function *)
let myOr p q = 
  if q then 
    true
  else 
    p;;


(* myAnd *)
(* p q myAnd *)
(* T F F *)
(* F T F *)
(* F F F *) 
(* T T T *)

let myAnd p q = 
  if p then
    q
  else
    false;;

(* myXor *)
(* p q myXor *)
(* T F T *)
(* F T T *)
(* F F F *) 
(* T T F *)

let myXor p q =
  if p then
    (if q then false else true)
  else 
    q;;

let myXor p q = not (p = q);;