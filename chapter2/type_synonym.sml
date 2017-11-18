datatype suit = Club | Diamond | Heart | Spade
datatype rank = Jack | Queen | King | Ace | Num of int

type card = suit * rank

fun is_queen_of_spades (c : card) =
  #1 c = Spade andalso #2 c = Queen

val c1 : card = (Diamond, Queen)
val c2 : suit * rank = (Heart, King)
val c3 = (Spade, Queen)
(*  will be type Card AND ALSO type Suit AND ALSO type Rank *)

val isit = is_queen_of_spades (c3)
