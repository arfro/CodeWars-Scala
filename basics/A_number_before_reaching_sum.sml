fun number_before_reaching_sum(sum : int, l : int list) =
        if null (l)
        then 0
        else if null (tl l)
            then hd l
        else
            
            hd l + number_before_reaching_sum(sum, tl l)
