fun is_older(one : int * int * int, two : int * int * int) = 
	if (#3 one) > (#3 two) orelse (#3 one) = (#3 two)
	then
		false
	else
		if (#2 one) > (#2 two)
		then false
		else
			if(#1 one) > (#1 two)
			then
				false
			else true;
