fun what_month(day: int) = 
    if day > 365 orelse day < 1
    then 0
        else 
            let val months = [31,28,31,30,31,30,31,31,30,31,30,31]
        in 
            (* 1 + because the return value will be the month before *)
            1 + number_before_reaching_sum(day, months)
        end
    
val r = what_month(40) 
