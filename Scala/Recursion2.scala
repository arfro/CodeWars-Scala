def sum(list: List[Int]) : Int = {
  list match {
    case Nil => 0
    case head :: tail => head + sum(tail)
  }
}

//20
val h = sum(List(2,3,4,5,6))
