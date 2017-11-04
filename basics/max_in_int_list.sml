fun max(l : int list) =
	if null l
	then 0 
	else if null (tl l)
	then hd l
	else
		let val maxV = max (tl l)
		in 
			if maxV > (hd l)
			then maxV 
			else hd l
		end
			
