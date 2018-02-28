// Either is similar to Try just that it holds failure in Left and success in Right

def makeInt(s: String): Either[String, Int] = {
  try{
    Right(s.toInt)
  } catch {
    case e: Exception => Left(e.toString)
  }
}

//this will become a Left(string) with an exception in it
val left = makeInt("abc")

//this will become Right(2)
val right = makeInt("2")
