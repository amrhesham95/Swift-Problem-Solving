//
//  MostCommonItemInArray.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 02/06/2024.
//

import XCTest

class MostCommonItemInArray: XCTestCase {
    
  /*
   The question:
   how to get the most common item inside of an array.  The main takeaway for today's lesson is to learn how to properly keep track of a running count using a Swift Dictionary object.
   
   Sample input and output
   • input: array = [4, 4, 4, 3, 3, 3, 4, 6, 6, 5, 5, 2], output: 4

   */
  /// function that returns the most repeated item in the list.
  /// - Parameters:
  ///     - heights: array of repeated items 
    func mostCommonItemIs<T: Hashable>(_ array: [T]) -> T {
        var dictionary = Dictionary<T,Int>()
        
        for item in array {
            if let itemCount = dictionary[item] {
                dictionary[item] = itemCount + 1
            } else {
                dictionary[item] = 1
            }
        }
        
        var mostRepeatedItem: T = array.first!
        var maxCount = 0
        for item in dictionary.keys {
            if let count = dictionary[item] {
                if maxCount <= count {
                    maxCount = count
                    mostRepeatedItem = item
                }
            }
        }
        return mostRepeatedItem
  }
  
  func test1() {
      // given
      let array = [4, 4, 4, 3, 3, 3, 4, 6, 6, 5, 5, 2]
      
      // when
      let output = mostCommonItemIs(array)
      
      // then
      XCTAssertEqual(output, 4)
  }
}
