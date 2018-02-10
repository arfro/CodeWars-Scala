def timer[A](blockOfCode: => A) = {
  val startTime = System.nanoTime
  val call = blockOfCode
  val finishTime = System.nanoTime
  val result = (finishTime - startTime)/100000d
  result
}
