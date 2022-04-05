//
//  Challeng6_RemoveDuplicateLetters.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 30/11/2021.
//

import XCTest

class Challenge6_RemoveDuplicateLetters: XCTestCase {

    /// a function that accepts a string as its input, and returns the same string just with duplicate letters removed.
    /// - Parameters:
    ///   - word: string to remove duplicates form
    /// - Description:
    ///   using for-in
    func removeDuplicateFrom(_ word: String) -> String {
        var used = [Character]()
        for letter in word {
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        return String(used)
    }
  
  func removeDuplicateFrom2(_ word: String) -> String {
    var used = [Character: Bool]()
    var result = [Character]()
    for letter in word where used.updateValue(true, forKey: letter) == nil {
      result.append(letter)
    }
    
    return String(result)
  }

    
    func removeDuplicateUsingOrderedSet(_ word: String) -> String {
        let orderedSet = NSOrderedSet(array: Array(word))
        let characters = orderedSet.array as! Array<Character>
       return String(characters)
    }
    
    func testRemoveDuplicateFromString_whenStringIsWombatReturnWombat() {
        XCTAssertEqual(removeDuplicateFrom("wombat"), "wombat")
    }
    
    func testRemoveDuplicateFromString_whenStringIsHelloReturnHelo() {
        XCTAssertEqual(removeDuplicateFrom("hello"), "helo")
    }
    
    func testRemoveDuplicateFromString_whenStringIsMississippiReturnMisp() {
        XCTAssertEqual(removeDuplicateFrom("hello"), "helo")
    }
    
    func testRemoveDuplicateUsingOrderedSet_whenStringIsWombatReturnWombat() {
        XCTAssertEqual(removeDuplicateUsingOrderedSet("wombat"), "wombat")
    }
    
    func testRemoveDuplicateUsingOrderedSet_whenStringIsHelloReturnHelo() {
        XCTAssertEqual(removeDuplicateUsingOrderedSet("hello"), "helo")
    }
    
    func testRemoveDuplicateUsingOrderedSet_whenStringIsMississippiReturnMisp() {
        XCTAssertEqual(removeDuplicateUsingOrderedSet("hello"), "helo")
    }
  
  
  func testPerformanceOfRemoveDuplicates() {
     
      measure {
        removeDuplicateFrom("wombat")
      }
  }
  
  func testPerformanceOfRemoveDuplicates2() {
     
      measure {
        removeDuplicateFrom2("wombat")
      }
  }

}
