fun min(l : int list) =
	if null l
	then 0
	else if null(tl l)
	then hd l
	else
		let val minV = min(tl l)
		in
			if (hd l) < minV
			then hd l
			else minV
		end
