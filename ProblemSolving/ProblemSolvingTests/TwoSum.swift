//
//  TwoSum.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 03/06/2024.
//

import XCTest

class TwoSum: XCTestCase {
    
    /*
     The question:
     Given an array of integers, return indices of the two numbers such that they add up to a specific target.
     
     Sample input and output
     // Example usage
     let nums = [2, 7, 11, 15]
     let target = 9
     print(twoSum(nums, target)) // Output: [0, 1]
     
     • input: array =[2, 7, 11, 15], target = 9
     • output: [0, 1]
     
     */

    /// function that returns same sentence with every other word reversed.
    /// - Parameters:
    /// -   nums: array of integers to search in
    /// - target: the target number
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let complemntaryIndex = dict[target - num] {
                return [complemntaryIndex, i]
            }
            dict[num] = i
        }
        return []
    }
    
    func test1() {
        // given
        let array = [2, 7, 11, 15]
        let target = 9
        
        // when
        let indices = twoSum(array, target)
        
        // then
        XCTAssertEqual(indices, [0, 1])
    }
    
    func test2() {
        // given
        let array = [2, 2, 2, 4]
        let target = 4
        
        // when
        let indices = twoSum(array, target)
        
        // then
        XCTAssertEqual(indices, [0, 1])
    }
    
}
