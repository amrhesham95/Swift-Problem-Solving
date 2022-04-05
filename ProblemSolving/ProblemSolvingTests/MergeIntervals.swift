//
//  MergeIntervals.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 05/04/2022.
//

import XCTest

class MergeIntervals: XCTestCase {
  
  /*
   The question:
   https://leetcode.com/problems/merge-intervals/
   Given an array of intervals where intervals[i] = [starti, endi], merge all overlapping intervals, and return an array of the non-overlapping intervals that cover all the intervals in the input.
   
   Example 1:

   Input: intervals = [[1,3],[2,6],[8,10],[15,18]]
   Output: [[1,6],[8,10],[15,18]]
   Explanation: Since intervals [1,3] and [2,6] overlaps, merge them into [1,6].
   
   Example 2:

   Input: intervals = [[1,4],[4,5]]
   Output: [[1,5]]
   Explanation: Intervals [1,4] and [4,5] are considered overlapping.

   */
  /// function that returns an int that reperesent the maximum area.
  /// - Parameters:
  ///     - intervals: array of intervals where intervals[i] = [starti, endi]
  func merge(_ intervals: [[Int]]) -> [[Int]] {
    // sort input
    
    // create empty array as result to be returned
    var result = [[Int]]()
    result.append(intervals[0])
    for i in 1..<intervals.count {
      let lastItem = result.last!
      let currentItem = intervals[i]
      if currentItem[0] >= lastItem [0] &&
          currentItem[1] <= lastItem [1] {
        // check if lower point in item is in between the prev item points then we are going to change the last item in the result array
        result.removeLast()
        let newItem = [
          min(currentItem[0], lastItem[0]),
          max(currentItem[1], lastItem[1])
        ]
        result.append(newItem)

      } else {
        // if not then add the whole item
        result.append(currentItem)
      }
    }
   
    return result
  }
  
  func testMergeIntervals_Example1() {
    let input = [[1,3],[2,6],[8,10],[15,18]]
    let output = [[1,6],[8,10],[15,18]]
    XCTAssertEqual(merge(input), output)
  }
  
  func testMergeIntervals_Example2() {
    let input = [[1,4],[4,5]]
    let output = [[1,5]]
    XCTAssertEqual(merge(input), output)
  }
}
