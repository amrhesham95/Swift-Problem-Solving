//
//  ReverseEveryOtherWord.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 02/06/2024.
//

import XCTest

class ReverseEveryOtherWord: XCTestCase {
    
  /*
   The question:
   Given a sentence string, implement a function that returns this same sentence with every other word reversed.
   
   Sample input and output
   • input: "Lets start today by completing a very interesting challenge"
   • output: "lets trats today yb completing a very gnitseretni challenge"

   */
  /// function that returns same sentence with every other word reversed.
  /// - Parameters:
  ///     - heights: array of repeated items
    func reverseWordsInSentence(_ sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        var newSentence = ""
        for i in 0..<words.count {
            if newSentence != "" {
                newSentence += " "
            }
            
            if i % 2 == 1 {
                newSentence += words[i].reversed()
            } else {
                newSentence += words[i]
            }
        }
        
        return newSentence
  }
  
  func test1() {
      // given
      let sentence = "Lets start today by completing a very interesting challenge"
      
      // when
      let reversedSentence = reverseWordsInSentence(sentence)
      
      // then
      XCTAssertEqual(reversedSentence, "Lets trats today yb completing a very gnitseretni challenge")
  }
}
