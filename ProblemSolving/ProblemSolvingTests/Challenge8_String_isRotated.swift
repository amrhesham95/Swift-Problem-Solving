//
//  Challenge8_String_isRotated.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 31/05/2024.
//

import XCTest

final class Challenge8_String_isRotated: XCTestCase {
    // Tip: A string rotation is when you take a string, remove some letters from its end, then append them to the front. For example, “swift” rotated by two characters would be “ftswi”.
    
    /// a function that accepts two strings, and returns true if one string is rotation of the other, taking letter case into account.
    /// - Parameters:
    ///     - input: original word to check
    ///     - rotated: modified word that may be a rotated version of the original one
    func isRotated(input: String, rotated: String) -> Bool {
        guard input.count == rotated.count else { return false }
        let doubled = input + input
        return doubled.contains(rotated)
    }
    
    // The string “abcde” and “eabcd” should return true.
    func test1() {
        XCTAssertTrue(isRotated(input: "abcde", rotated: "eabcd"))
    }
    
    // The string “abcde” and “eabcd” should return true.
    func test2() {
        XCTAssertTrue(isRotated(input: "abcde", rotated: "cdeab"))
    }

    // The string “abcde” and “abced” should return false.
    func test3() {
        XCTAssertFalse(isRotated(input: "abcde", rotated: "abced"))
    }
    
    // The string “abc” and “a” should return false.
    func test4() {
        XCTAssertFalse(isRotated(input: "abcde", rotated: "a"))
    }
    
    // Hint: If you write a string twice, it must encapsulate all possible rotations, e.g. “catcat” contains “cat”, “tca”, and “atc”.
}
