case class Money(amt : Int = 1, currency : String = "USD"){
  def +(other : Money) : Money = Money(other.amt + amt)
}

var g = Money(3) + Money(2)
