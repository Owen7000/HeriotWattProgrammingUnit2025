(* Functions *);;

let twice n = n + n;;

let twice' n = n + n;; (* single quote, fine to use in var names, pronounced "prime", "dashed" *);;


(* Both are valid ways to call functions *);;
twice 20;;
twice 30;;

twice(20);;
twice(30);;


twice (twice 20);; 
twice (twice 20) + 7;;

(* ctrl-f literal 20 in lecture notes for tree  *);;

twice (20) (* twice n = n + n *);;



let x = 4;;

let addX y = x + y;;

addX 1;;
addX 100;;


let x = 40;;
addX 100;;


let addX y = x + y;;
x;;

let x = "hello";;

addX 19;;