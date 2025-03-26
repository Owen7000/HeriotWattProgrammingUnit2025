type shape = Circ | Rect
             
let f1 s = match s with
  | Circ -> true
  | Rect -> false;;

let f2 s = match s with
  | true -> Circ
  | false -> Rect;;

f1 (f2 true);; 
f2 (f1 Circ);;

