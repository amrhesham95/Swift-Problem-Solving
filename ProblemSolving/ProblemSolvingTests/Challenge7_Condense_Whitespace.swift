//
//  Challenge7_Condense_Whitespace.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 01/12/2021.
//

import XCTest

class Challenge7_Condense_Whitespace: XCTestCase {

    // MARK: - Solution 1
    /// function that returns a string with any consecutive spaces replaced with a single space.
    /// - Parameters:
    ///     - word: word to remove the consecutive spaces from
    /// - using for in and if else
    func removeConsecutiveSpaces(word: String) -> String {
        var newWord = ""
        for letter in word {
            if letter != " " {
                newWord.append(letter)
            } else {
                if newWord.last != " " {
                    newWord.append(" ")
                }
            }
        }
        return newWord
    }
    
    
    func testRemoveConsecutiveSpaces_whenInputIs_a_3Spaces_b_3Spaces_c() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "a   b   c"), "a b c")
    }
    
    func testRemoveConsecutiveSpaces_whenInputIs_4Spaces_a() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "    a"), " a")
    }
    
    func testRemoveConsecutiveSpaces_whenInputIs_abc() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "abc"), "abc")
    }
    
    
    // MARK: - Solution 2
    /// function that returns a string with any consecutive spaces replaced with a single space.
    /// - Parameters:
    ///     - word: word to remove the consecutive spaces from
    /// - using componenets, filter and joined
    func removeConsecutiveSpacesUsingComponents(word: String) -> String {
        let components = word.components(separatedBy: .whitespacesAndNewlines)
        return components.filter {
            !$0.isEmpty
        }.joined(separator: " ")
    }

    func testRemoveConsecutiveSpacesUsingComponents_whenInputIs_a_3Spaces_b_3Spaces_c() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "a   b   c"), "a b c")
    }
    
    func testRemoveConsecutiveSpacesUsingComponents_whenInputIs_4Spaces_a() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "    a"), " a")
    }
    
    func testRemoveConsecutiveSpacesUsingComponents_whenInputIs_abc() {
        XCTAssertEqual(removeConsecutiveSpaces(word: "abc"), "abc")
    }
    
    // MARK: - Solution 3
    /// function that returns a string with any consecutive spaces replaced with a single space.
    /// - Parameters:
    ///     - word: word to remove the consecutive spaces from
    /// - using regular expression
    func removeConsecutiveSpacesUsingRegex(word: String) -> String {
        return word.replacingOccurrences(of: " +", with: " ", options: .regularExpression)
    }
    
    func testRemoveConsecutiveSpacesUsingRegex_whenInputIs_a_3Spaces_b_3Spaces_c() {
        XCTAssertEqual(removeConsecutiveSpacesUsingRegex(word: "a   b   c"), "a b c")
    }
    
    func testRemoveConsecutiveSpacesUsingRegex_whenInputIs_4Spaces_a() {
        XCTAssertEqual(removeConsecutiveSpacesUsingRegex(word: "    a"), " a")
    }
    
    func testRemoveConsecutiveSpacesUsingRegex_whenInputIs_abc() {
        XCTAssertEqual(removeConsecutiveSpacesUsingRegex(word: "abc"), "abc")
    }

}
