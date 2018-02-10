def ifBothTrue(test1: => Boolean)
              (test2: => Boolean)
              (codeBlock: => Unit){
                if(test1 && test2){
                  codeBlock
                }
              }
//should print yup
ifBothTrue("annette".length == 7)(4 > 3)(println("yup"))

//should print nothing
ifBothTrue("annette".length == 5)(4 > 3)(println("yup"))
