def defaultValues(a: Int = 2)(b: Int = 4) = { a + b }

val one = defaultValues()() // 2 + 4
val two = defaultValues(3)() // 3 + 4
val three = defaultValues()(8) // 2 + 8
