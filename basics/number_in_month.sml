fun number_in_month (l : (int*int*int) list, m : int) =
if l = nil
then 0
else
    (if #2 (hd l) = m then 1 else 0) + number_in_month (tl l, m);
    
val r = number_in_month([(23,33,23), (23,33,33),(23,33,33), (23,33,33),(23,33,33)], 33);
val f = number_in_month([], 33);
val s = number_in_month([(23,4,23), (23,33,33),(23,33,33), (23,33,33),(23,33,33)], 3);
