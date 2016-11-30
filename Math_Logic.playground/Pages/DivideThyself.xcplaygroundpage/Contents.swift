//: Playground - noun: a place where people can play

import UIKit
import XCTest

/*
 Write a function name divideSelf that accepts an Int and returns a Bool We'll say that a positive int divides itself if every digit in the number divides into the number evenly. So for example 128 divides itself since 1, 2, and 8 all divide into 128 evenly. We'll say that 0 does not divide into anything evenly, so no number with a 0 digit divides itself.
 */

//let asdf = 232
//let qwerty = String(asdf)
//let characters = qwerty.characters
//let new = Int(qwerty)
//
//for i in characters {
//    if Int(String(i))! % 2 == 0 {
//    print("Even")
//    }
//}

func divideSelf(number: Int) -> Bool {
    let iterableInt = String(number).characters
    
    for i in iterableInt {
        if Int(String(i)) == 0 {
            return false
        } else if number % Int(String(i))! != 0 {
            return false
        }
    }
    return true
}

XCTAssert(divideSelf(number: 128))
XCTAssert(!divideSelf(number: 0))
XCTAssert(!divideSelf(number: 123))
