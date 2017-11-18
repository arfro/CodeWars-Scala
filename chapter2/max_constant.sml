datatype expression = Constant of int
                      | Negate of expression
                      | Add of expression * expression
                      | Multiply of expression * expression

fun max_constant e =
  let fun max_of_two(e1, e2) =
        let val res1 = max_constant e1
            val res2 = max_constant e2
        in
            if res1 > res2
            then res1
            else res2
            end
  in
  case e of
      Constant i => i
    |  Add(e1, e2) => max_of_two(e1,e2)
    |  Multiply(e1, e2) => max_of_two(e1,e2)
    |  Negate e1 => max_constant e1
  end


val test_exp = Add(Constant 15, Add(Constant 20, Constant 2))
val nineteen = max_constant test_exp
