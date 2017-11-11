fun dates_in_month (l : (int*int*int) list, m : int) =
   if null l
    then []
    else
        if #2 (hd l) = m 
        then (hd l) :: dates_in_month (tl l, m)
        else dates_in_month (tl l, m)



val r = dates_in_month([(3,3,3),(3,6,3),(2,5,3),(3,5,3)], 5);
val r2 = dates_in_month([], 5);
val r3 = dates_in_month([(3,3,3),(3,6,3),(2,5,3),(3,5,3)], 1);
