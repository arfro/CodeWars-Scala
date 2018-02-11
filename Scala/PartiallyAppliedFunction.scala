def plus(a: Int)(b: Int) = a + b

def plus2 = plus(2)(_)

def wrap(prefix: String)(text: String)(suffix: String) = {
  prefix + text + suffix
}

def wrapWithStars = wrap("***")(_: String)("***")

//will be 7
val j = plus2(5)

//will be ***hello***
val x = wrapWithStars("hello")
