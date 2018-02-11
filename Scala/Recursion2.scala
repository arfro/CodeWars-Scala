  def sum(list: List[Int]) : Int = {
    list match {
      case Nil => 0
      case head :: tail => head + sum(tail)
    }
  }


  //tail recursion

  //keep the signature the same
  def sum2(list: List[Int]): Int = sum2tail(list, 0)


  //create a second function
  private def sum2tail(list: List[Int], accumulator: Int) : Int = {
    list match {
      case Nil => accumulator
      case head :: tail => sum2tail(tail, accumulator + head)
    }
  }

  //20
  val h = sum(List(2,3,4,5,6))

  val b = sum2(List(1,2,3,5,5,5,5,5,5,5))
