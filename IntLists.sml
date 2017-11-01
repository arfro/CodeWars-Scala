(* sum of int list *)
fun sum_list(xs: int list) = 
    if null xs
    then 0
    else hd xs + sum_list(tl xs);
    
    
(* product of int list *)
fun list_product(ys : int list) = 
    if null ys
    then 1
    else (hd ys) * (list_product(tl ys));
    
    
(* countdown from z to 0 *)
fun countdown(z : int) = 
    if z = 0
    then []
    else z :: countdown(z-1);
    
(* append two lists *)
fun append_list(one : int list, two : int list) =
    if null one
    then two
    else (hd one) :: (append_list((tl one), two));
    
