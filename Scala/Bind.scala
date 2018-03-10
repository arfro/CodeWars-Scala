def f(a: Int): (Int, String) = {
  val res = a * 5
 (res, s"\nresult from f: $res")
}

def g(a: Int): (Int, String) = {
  val res = a * 500
 (res, s"\nresult from g: $res")
}

def h(a: Int): (Int, String) = {
  val res = a * 1
 (res, s"\nresult from h: $res")
}

//HOF. Takes a function Int => tuple Int,String and returns concated Strings
def bind(f: (Int) => (Int, String),
        tup: (Int, String)): (Int, String) = {
          val (intVal, strVal) = f(tup._1)
          (intVal, tup._2 + strVal)
        }


val valf = f(100)
val valg = bind(g, valf)
val valh = bind(h, valg)
