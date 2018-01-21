object HigherOrderFunctions extends App{

  def add(i: Int, j: Int) = i+j
  def multiply(i: Int, j: Int) = i+j

  // Hihger order function. Takes two functions, two integers and returns
  // a sum of the evaluation result of the passed two functions
  def sumOfAddAndMultiply(f1: (Int, Int) => Int, f2: (Int, Int) => Int, i: Int, j: Int ) = {
    f1(i, j) + f2(i, j)
  }

  val sum = sumOfAddAndMultiply(add, multiply, 5, 6)
  println(sum)

}
