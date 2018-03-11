class Wrapper[A](value: A){

  def map[B](f: A => B) : Wrapper[B] = {
    val res = f(value)
    new Wrapper(res)
  }
  def flatMap[B](f: A => Wrapper[B]) : Wrapper[B] = f(value)

  override def toString = value.toString

}
