fun number_before_reaching_sum(sum: int, l: int list)=
    if (hd l) >= sum
    then 0
    (* each new call with arguments (sum - last nr, list tail)
    sum - last nr in order to keep trck of changing sum *)
    else 1 + number_before_reaching_sum( sum - (hd l), tl l )   
            
            
val r = number_before_reaching_sum(5, [1,1,3,1,1,1,1,1,1]) 
