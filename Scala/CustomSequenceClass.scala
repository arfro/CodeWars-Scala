case class MySequence[A](elements: A*){

  // ugly... shouldnt be doing it but just trying to get a simple datatype wrapper to work
  private val el = scala.collection.mutable.ArrayBuffer[A]()

  //initialize
  el ++= elements

  //this will allow me to use an internal for loop
  def foreach(block: A => Unit): Unit = {
    el.foreach(block)
  }

}
