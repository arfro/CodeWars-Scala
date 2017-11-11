val a_pair = (4+4,5+5)
val a_record = {second=5+5, first=4+4}
val another_pair = {1=3, 2=5}

(* above creates (3,5) : int * int
Can be accessed with #1 another_pair and will be 3
Tuples are SYNTACTIC SUGAR for records (syntax within a programming language that is designed to make things easier to read or to express)
There is no tuples in SML. There is only a special way of writing records
*)
