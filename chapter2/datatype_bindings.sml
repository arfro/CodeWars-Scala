(*
datatype myType = TwoStrings of String * String
                | Str of String
                | Integer of int
                | Trololo

TwoStrings, Str, Integer, Trololo are constructors.

*)

datatype Human = CompleteData of string * int * int
                | Str of string
                | Pizza
val d = CompleteData("annette", 26, 180)
