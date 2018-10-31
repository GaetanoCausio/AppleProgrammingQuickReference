/*: (C) Gaetano Causio 2018
 
 # Functional Swift
 
 */
import Foundation
let arrayInt = [2,3,4,5,0,4,7,2]
//: ## filter()
let arrayIntFiltered = arrayInt.filter{$0 != 0}
print(arrayIntFiltered)
//: ## map()
let arrayStr = arrayIntFiltered.map{String(repeating: "0", count: Int.random(in: 0...3)) + String($0)}
print(arrayStr)

// Full expanded version
let arrayCounts1 = arrayStr.map({ (myElement) -> Int in
    return myElement.count
})
print(arrayCounts1)

// Compact version
let arrayCounts2 = arrayStr.map{$0.count}
print(arrayCounts2)
//: ## reduce()
// basically is iterating this: $0 = $0 + $1 ($0 = Result; $1 = Value)

// Compact version
let arraySummary1 = arrayStr.reduce("Value(Length): ") { $0 + $1 + "(" + "\($1.count)) - " }
print(arraySummary1)

// Full expanded version
let arraySummary2 = arrayStr.reduce("Value(Length): ") { (Result, Value) -> String in
    return Result + Value + "(" + "\(Value.count)) - "
}
print(arraySummary2)
//: ## compactMap()
let arrayOptional = [1,3,6,nil,7,8,9,2,nil,8,4]
let arraySimple1 = arrayStr.flatMap{$0}
print(arraySimple1) // array is "flattened"
let arraySimple2 = arrayOptional.compactMap{$0}
print(arraySimple2) // nil optionals are removed
let arrayNumbers = ["1","3","six","ohhh","8"]
let onlyNumbers = arrayNumbers.compactMap{Int($0)} // non convertiable elements would be nil and so skipped
print(onlyNumbers)
//: ## chaining
let divisibelBy2 = arrayOptional.compactMap{ $0 }.filter{$0 % 2 == 0}
print(divisibelBy2)
let sortedArray = arrayStr.compactMap{Int($0)}.sorted{$0>$1}
print(sortedArray)

