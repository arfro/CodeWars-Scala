fun sum_triple (x, y, z) =
    x + y + z

val f = sum_triple (4,4,4)


fun print_name (a, b, c) =
    a ^ " " ^ b ^ " " ^ c

(*
In ML every function takes and returns one argument!
*)

fun rotate(a,b,c) = (c,b,a) (*this is actually taking a tuple so below is ok:*)
val g = sum_triple(rotate(3,4,5))

fun rotate_right f =
    rotate(rotate f)

val trip = (5,7,8)
val d = rotate_right(trip) (*will be the same, rotating twice is like not rotating at all*)
