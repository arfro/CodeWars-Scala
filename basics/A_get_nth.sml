fun get_nth(l : string list, n : int) =
    if length l < n 
    then ""
    else
        if n = 1
        then hd l
        else get_nth(tl l, n-1)
        
        

val g = get_nth(["232", "233", "2334"], 1)
