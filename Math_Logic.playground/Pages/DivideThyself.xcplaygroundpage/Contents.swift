//: Playground - noun: a place where people can play

import UIKit
import XCTest

/*
 Write a function name divideSelf that accepts an Int and returns a Bool We'll say that a positive int divides itself if every digit in the number divides into the number evenly. So for example 128 divides itself since 1, 2, and 8 all divide into 128 evenly. We'll say that 0 does not divide into anything evenly, so no number with a 0 digit divides itself.
 */


// TJ does not like this MUCH easier solution :_(
//func divideSelf(number: Int) -> Bool {
//    let iterableInt = number.description.characters
//    
//    for i in iterableInt {
//        if i == "0" {
//            return false
//        } else if number % Int(String(i))! != 0 {
//            return false
//        }
//    }
//    return true
//}


func divideSelf(number: Int) -> Bool {
    let digitCount = findDigitCount(number: number)
    var places = 10
    var previousDigit = 0
    
    if number == 0 {
        return false
    }
    
    for i in 0..<digitCount {
        let digit = (number % places - previousDigit) / (places / 10)
        previousDigit = digit
        places = places * 10
        if number % digit != 0 {
            return false
        }
    }
    return true
}

func findDigitCount(number: Int) -> Int {
    var digits = 0
    var tempNumber = number
    while tempNumber > 0 {
        tempNumber = tempNumber / 10
        digits += 1
    }
    
    return digits
}


//XCTAssert(divideSelf(number: 128))
//XCTAssert(!divideSelf(number: 0))
//XCTAssert(!divideSelf(number: 123))

divideSelf(number: 128)
//divideSelf(number: 0)
//divideSelf(number: 123)
