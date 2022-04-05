//
//  ContainerWithMostWater.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 05/04/2022.
//

import XCTest

class ContainerWithMostWater: XCTestCase {
  
  /*
   The question:
   https://www.youtube.com/watch?v=i-gchvhqLO4&list=PL5PR3UyfTWvdra1XrLZTWW9SNttriKR8E&index=2
   */
  /// function that returns an int that reperesent the maximum area.
  /// - Parameters:
  ///     - heights: array of integers represents columns hight
  func getMaxArea(_ heights: [Int]) -> Int {
    var maxArea = 0
    var left = 0
    var right = heights.count - 1
    while left < right {
      // recalucate maxArea
      let minColumnHeight = min(heights[left], heights[right])
      let width = right - left
      maxArea = max(maxArea, minColumnHeight * width)
      
      // move one pointer
      if left < right {
        left += 1
      } else {
        right -= 1
      }
    }
    return maxArea
  }
  
  
  func testGetMaxArea() {
    let heights = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    XCTAssertEqual(getMaxArea(heights), 49)
  }
}
