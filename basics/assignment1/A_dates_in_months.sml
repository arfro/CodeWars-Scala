fun dates_in_months (l : (int*int*int) list, m : int list) =
   if l = nil
    then []
    else
        if m = nil
        then []
        else
            dates_in_month(l, hd m) @ dates_in_months(l, tl m)



val r = dates_in_months([(3,4,3),(3,6,3),(2,5,3),(3,3,3)], [5,4,3]);
val r2 = dates_in_months([], [5]);
val r3 = dates_in_months([(3,3,3),(3,6,3),(2,5,3),(3,5,3)], []);
