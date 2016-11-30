//: [Previous](@previous)

import Foundation
import XCTest

/*
 Write a function named transform that accepts an integer n and returns an enum of type Answer.
 
 Fizz buzz is a game where you count up from 1 and say "fizz" for multiples of 3 but not 5, "buzz" for multiples of 5 but not 3, and "fizzbuzz" for multiples of both 3 and 5.
 
 Answer should have four cases. fizz, buzz, fizzBuzz, and number. number should have an associated value of type Int.
 */
enum answer {
    case fizz
    case buzz
    case fizzBuzz
    case number(Int)
}

func transform(number: Int) -> answer {
    if (number % 5) == 0 && (number % 3) == 0 {
        return answer.fizzBuzz
    } else if number % 5 == 0 {
        return answer.buzz
    } else if number % 3 == 0 {
        return answer.fizz
    } else {
        return answer.number(number)
    }
}

//let one = answer.buzz
//let two = answer.buzz
//let question = one == two

//XCTAssertEqual(transform(number: 3) == answer.fizz)
//XCTAssert(transform(number: 5) == answer.buzz)
//XCTAssert(transform(number: 15) == answer.fizzBuzz)
//XCTAssert(transform(number: 29) == answer.numer(29))
//XCTAssert(transform(number: 18) == answer.fizz)
//XCTAssert(transform(number: 25) == answer.buzz)
//XCTAssert(transform(number: 30) == answer.fizzBuzz)

transform(number: 3)
transform(number: 5)
transform(number: 15)
transform(number: 29)
transform(number: 18)
transform(number: 25)
transform(number: 30)
transform(number: 60)
transform(number: 45)


