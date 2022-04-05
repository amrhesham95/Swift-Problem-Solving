//
//  Challenge21_CountingBinaryOnes.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 05/04/2022.
//

import XCTest

class Challenge21_CountingBinaryOnes: XCTestCase {
  
  func getNumberOfOnes(_ number: Int) -> Int{
    return String(number, radix: 2).filter { $0 == "1"}.count
  }
  
  /*
   The question:
   Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
   
   Sample input and output
   • The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.
   • The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
   */
  /// function that returns an int that reperesent the maximum area.
  /// - Parameters:
  ///     - heights: array of integers represents columns hight
  func countNumberOfOnesIn(_ number: Int) -> (nextHighest: Int?,
                                     nextLowest: Int?) {
    // get number of ones in input
    let numberOfOnes = getNumberOfOnes(number)
    
    // from input +1 to IntMax get each number of ones until you find same number of ones as input to find nextHighest
    var nextHighest: Int?
    var nextLowest: Int?
    for i in number + 1...Int.max {
      if getNumberOfOnes(i) == numberOfOnes {
        nextHighest = i
        break
      }
    }
    
    // from input -1 to 1 get each number of ones until you find same number of ones as input to find nextLowest
    for i in (0 ..< number).reversed() {
      if getNumberOfOnes(i) == numberOfOnes {
        nextLowest = i
        break
      }
    }


    return (nextHighest, nextLowest)
  }
  
  func testcountNumberOfOnesIn_whenInputIs12_outPutIs_17And10() {
    let highestLowest = countNumberOfOnesIn(12)
    XCTAssertEqual(highestLowest.nextHighest, 17)
    XCTAssertEqual(highestLowest.nextLowest, 10)
  }
  
  func testcountNumberOfOnesIn_whenInputIs28_outPutIs_35And26() {
    let highestLowest = countNumberOfOnesIn(28)
    XCTAssertEqual(highestLowest.nextHighest, 35)
    XCTAssertEqual(highestLowest.nextLowest, 26)
  }

}
