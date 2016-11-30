//: [Previous](@previous)

import Foundation
import XCTest

/* Write a function named strtupzer which removes the 'odd' vowels from a word.
 
 The function should remove the first vowel it encounters, leave the second, remove the third, etc.
 */

func strtupzer(word: String) -> String {
    //including y as a vowel
    let vowels = ["a", "e", "i", "o", "u", "y"]
    let letters = word.lowercased().characters
    var newWord = ""
    var odd = true
    
    for letter in letters {
        if vowels.contains(String(letter)) {
            if !odd  {
                newWord.append(String(letter))
            }
            odd = !odd
        } else {
            newWord.append(String(letter))
        }
    }
    return newWord
}



XCTAssert(strtupzer(word: "Cupcake") == "cpcak")