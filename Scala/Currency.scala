case class Money(cur : String, amt : Int)

val list = List(Money("EUR", 30), Money("GBP", 40), Money("PLN", 60))
val onlyEur = list.partition(n => n.cur == "EUR")._1
val allButEur = list.partition(n => n.cur == "EUR")._2
