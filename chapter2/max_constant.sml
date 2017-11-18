datatype expression = Constant of int
                      | Negate of expression
                      | Add of expression * expression
                      | Multiply of expression * expression

fun max_constant e =
  case e of
      Constant i => i
    |  Add(e1, e2) => Int.max(max_constant e1, max_constant e2)
    |  Multiply(e1, e2) => Int.max(max_constant e1, max_constant e2)
    |  Negate e1 => max_constant e1


val test_exp = Add(Constant 15, Add(Constant 20, Constant 2))
val nineteen = max_constant test_exp
