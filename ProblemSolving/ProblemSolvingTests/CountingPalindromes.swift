//
//  CountingPalindromes.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 04/06/2024.
//

import XCTest

class CountingPalindromes: XCTestCase {
    
    /*
     The question:
     Write a function to detect palindromes, a palindrome is a word that you can spell frontwards and backwards using the same character sequence.
     also count the occurrences of palindromes in a sentence.
     
     /// Sample Usage
     • input: "madam anna kayak notpalindrome anna Civic racecar"
     • output: ["Civic": 1, "madam": 1, "anna": 2, "racecar": 1, "kayak": 1]
     
     */
    /// function that returns same sentence with every other word reversed.
    /// - Parameters:
    /// - s: string contains the characters
    func palindromeCount(_ s: String) -> [String: Int] {
        var dict = [String: Int]()
        for word in s.components(separatedBy: " ") {
            if isPalindrome(word) {
                if let count = dict[word] {
                    dict[word] = count + 1
                } else {
                    dict[word] = 1
                }
            }
        }
        return dict
    }
    
    func isPalindrome(_ s: String) -> Bool {
        s.lowercased() == String(s.lowercased().reversed())
    }
    
    func test1() {
        // given
        let word =  "madam anna kayak notpalindrome anna Civic racecar"
        
        // when
        let output = palindromeCount(word)
        
        // then
        XCTAssertEqual(["Civic": 1, "madam": 1, "anna": 2, "racecar": 1, "kayak": 1], output)
    }
}
