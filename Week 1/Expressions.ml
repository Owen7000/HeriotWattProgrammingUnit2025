(* we'll call them if-expressions *);;

if 4 < 5 then 200 else 400;;

(* if (...) { ... } else { ... }. Not like doing this*);;
(* More like this: (4<5) ? 200 : 400 *);;

if 4 > 5 then 200 else 400;;


(* The below causes an error. The then and else branches must return the same type. *);;
(* if 4 > 5 then 200 else "hello";; *);;

if 4 > 5 then 200 else 400;;
if 4 > 5 then 200 else (200 + 1);;

(* Standard ML -- developed in Edinburgh Uni, LFCS;  *);;



4 + 6;;
40 * 2;;
( 4 + 6 ) + ( 10 * 2 );;


(if 2 < 5 then 10 else 20) + 100;; 
(if 2 < 4 then 100 else 300) + (if 4 > 10 then 30 else 50);;