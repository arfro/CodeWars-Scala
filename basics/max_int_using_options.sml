(* fn : int list -> int option

When returning from a function that can be null, use options. 
Return either a NONE instance or a SOME instance.

valOf, isSome

*)

fun max(l : int list) =
	if null l
	then NONE 
	else
		let val maxV = max (tl l)
		in 
			if isSome maxV andalso valOf maxV > (hd l)
			then maxV 
			else SOME (hd l)
		end
