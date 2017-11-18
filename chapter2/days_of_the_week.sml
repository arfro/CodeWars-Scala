datatype day = Sun | Mon | Tue | Wed | Thu | Fri | Sat

fun get_day_nr(d : day) =
    (case d of
      Mon => 1
    | Tue => 2
    | Wed => 3
    | Thu => 4
    | Fri => 5
    | Sat => 6
    | Sun => 7)


val seven = get_day_nr(Sun)

val three = get_day_nr(Wed)

val one = get_day_nr(Mon)
