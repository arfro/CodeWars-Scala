class Wrapper[Int](value: Int){

  def map(f: Int => Int) : Wrapper[Int] = {
    val res = f(value)
    new Wrapper(res)
  }
  def flatMap(f: Int => Wrapper[Int]) : Wrapper[Int] = f(value)

  override def toString = value.toString

}
