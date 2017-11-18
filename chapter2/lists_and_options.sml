(*
[] -> constructor for empty list
x::xs' -> constructor for non empty list , x -> head, xs' -> tail
*)


fun sum_list xs =
  case xs of
    [] => 0 (* if empty, return 0 *)
  | x::xs' => x + sum_list xs'
  (* if not empty divide it into x (head) and xs' (tail) and sum *)


val sum = sum_list([3,3,3,3,3,3])
