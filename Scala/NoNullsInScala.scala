// need to always work with Option rather than null.
// exceptions wont be thrown, and null values wont occur

def makeInt(s: String): Option[Int] = {
  try{
    Some(s.toInt)
  }
  catch{
    case e: Exception => None
  }
}


//to get a value from an option, use getOrElse
val nr = makeInt("4").getOrElse("none!")

//you can convert a whole list of strings!!
val list = List("3", "4", "9")

//this will return a list of options. To have a list of numbers only...
val convertedList = list.map(makeInt)

// .. you need to flatten the output of the above
val flattenedConvertedList = list.map(makeInt).flatten

// ... or you can just use a flatmMp
val flatmappedConvertedList = list.flatMap(makeInt)
