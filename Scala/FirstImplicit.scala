def printAIfTrue(a: Int)(implicit b: Boolean) = if (b) println(a)

//this would result in could not find iplicit value for param b: Boolean:
// printAIfTrue(5)

//this will work fine because we have an implicit value b in scope
implicit val b = true
printAIfTrue(5)
