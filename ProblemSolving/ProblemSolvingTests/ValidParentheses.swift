//
//  ValidParentheses.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 03/06/2024.
//

import XCTest

class ValidParentheses: XCTestCase {
    
    /*
     The question:
     Determine if a string containing just the characters '(', ')', '{', '}', '[' and ']', is valid. A string is valid if the brackets are closed in the correct order.

     /// Sample Usage
     • input: "()[]{}"
     • output: true
     
     */
    /// function that returns same sentence with every other word reversed.
    /// - Parameters:
    /// - s: string contains the characters
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let map: [Character: Character] = [")": "(", "}": "{", "]": "["]
        
        for char in s {
            if let match = map[char] {
                if stack.popLast() != match {
                    return false
                }
            } else {
                stack.append(char)
            }
            
        }
        return stack.isEmpty
    }
    
    func test1() {
        // given
        let word = "()[]{}"
        
        // when
        let output = isValid(word)
        
        // then
        XCTAssertTrue(output)
    }
    
    func test2() {
        // given
        let word = "(]"
        
        // when
        let output = isValid(word)
        
        // then
        XCTAssertFalse(output)
    }

}
