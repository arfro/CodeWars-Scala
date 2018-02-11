//example 1
// this is a syntactic sugar for a curried function.
// it will call three functions and chain them, so:
// vat -> shopCharge -> productPrice
def getFinalProductPrice(vat: Double)
                        (shopCharge: Double)
                        (productPrice: Double): Double = {
                        vat + shopCharge + productPrice
                        }

//so vat or shopCharge wont be changing to often.
// 1. first argument is vat. Will evaluate to Double => Double
val vatApplied = getFinalProductPrice(10) _
// 2. second argument is shopCharge. Equivalent of calling vatApplied(10)(10).
// so the return type will be Double.
val shopChargeApplied = vatApplied(10)
// 3. third argument is productPrice. Will evaluate to Double. Final price
// Equivalent of calling vatApplied(10)(10)(100) or shopChargeApplied(10)(100)
val finalPrice = shopChargeApplied(100)


//example 2
def convertFromMilesToKm(howManyKmInOneMile: Int)
                        (miles: Int) : Int = {
                        miles / howManyKmInOneMile
                        }

// how many km in a mile wont be changing often
val convertFromMilesToKmCurried = convertFromMilesToKm(2) _
val result = convertFromMilesToKmCurried(20)
