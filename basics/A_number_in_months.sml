fun number_in_months (l : (int*int*int) list, m : int list) =
if l = nil
then 0
    else
        if m = nil
        then 0
        else
            number_in_month(l, hd m) + number_in_month(l, (hd (tl m)))
            

val r = number_in_months([(23,3,23), (23,33,33),(23,3,33), (23,6,33),(23,33,33)], [4,3]);

val r2 = number_in_months([(23,3,23), (23,33,33),(23,3,33), (23,6,33),(23,33,33)], []);

val r3 = number_in_months([], [4,3]);

val r4 = number_in_months([(23,3,23), (23,4,33),(23,3,33), (23,6,33),(23,33,33)], [4,3]);
