fun date_to_string(d : int * int * int) =
        if (#1 d) > 31 orelse (#1 d) < 1 orelse (#2 d) > 12 orelse (#2 d) < 1 
        then "Invalid date"
        else
        let
            val m = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        in
            get_nth(m, #2 d) ^ " " ^ Int.toString(#1 d) ^ ", " ^ Int.toString(#3 d)
        end
        
        
val r = date_to_string((2, 4, 2015))
val f = date_to_string((2, 0, 2015))
