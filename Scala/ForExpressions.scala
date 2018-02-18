case class Spice(name: String, origin: String)

val listOfSpices = List(
  Spice("tikka masala", "india"),
  Spice("bay leave", "poland")
  )


  val indianSpices = for{
        s <- listOfSpices
        if(s.origin == ("india"))
      } yield s
