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

}
