//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

/*
 Implement the function from fizzbuzz in as many different ways as you can think of. The differences should be significant (eg. if you used a switch before, use if.)
 
*/


enum answer {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
}

func transform(number: Int) -> answer {
    switch number {
    case let x where x % 15 == 0:
        return .fizzBuzz
    case let x where x % 5 == 0:
        return .buzz
    case let x where x % 3 == 0:
        return .fizz
    default:
        return .number(number)
    }
}



transform(number: 3)
transform(number: 5)
transform(number: 7)
transform(number: 15)
transform(number: 29)
transform(number: 18)
transform(number: 25)
transform(number: 30)
transform(number: 60)
transform(number: 45)
