fun count_up_from_1(upto: int) =
	let
		fun count (from: int) =
			if from=upto
			then upto::[]
			else from::count(from+1)
		
	in
		count(1)
	end
