//factorial

def fact(n: Int): Int = factTail(n, 1)

private def factTail(n: Int, accumulator: Int): Int = {
  n match {
  case 1 => accumulator
  case _ => factTail(n - 1, accumulator * n)
  }
}


// avg of list integers
def avg(list: List[Int]): Int = avgTail(n, 0) / list.size

private def avgTail(list: List[Int], accumulator: Int): Int = {
  list match {
    case nil => accumulator
    case x :: xs => avgTail(xs, accumulator + x)
  }
}
