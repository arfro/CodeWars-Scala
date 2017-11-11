(* Write a function
number_in_month
that takes a list of dates and a month (i.e., an
int
) and returns
how many dates in the list are in the given month. *)

fun number_in_month(x : int*int*int list, m: int) =
    if null x then 0
    else
      let fun inc x = x + 1;

        val counter = 0;
      in
        if m = #2 (hd x) andalso m > 0 then
           inc counter
           number_in_month((tl x), m)
        else
           number_in_month((tl x), m)
      end
