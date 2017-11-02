fun count_up_from_1(upto: int) =
	let
		fun count (from: int, to: int) =
			if to=from
			then to::[]
			else from::count(from+1, to)
		
	in
		count(1, upto)
	end
