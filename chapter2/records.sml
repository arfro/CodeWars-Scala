(* record is a new type .
The below will evaluate to:
val x = {bar=(5,true),baz=(false,8),foo=8}
  : {bar:int * bool, baz:bool * int, foo:int}
We don't have to declare a record type.. :o whuuuaaat
*)
val x = {bar= ((3+2),true andalso true), foo= 3+5, baz=(false,8) }
val bf = {name="Phil", annoying=true andalso true, favFood=("meat", "sausage", "children")}
val f = #name bf
