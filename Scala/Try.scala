// if im using Try instead of Option then I can get Success or Failure. Failure will carry
// the reason why function failed. Should be using Try instead of Option if I need to know
// the reason behind the Failure
import scala.util.{Try, Success, Failure}
def makeInt(s: String): Try[Int] = Try(s.toInt)
