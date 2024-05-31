//
//  Challenge19_SwapTwoNumbersTests.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 27/11/2021.
//

import XCTest

// MARK: - Challenge 19: Swap two numbers
//
class Challenge19_SwapTwoNumbersTests: XCTestCase {
    
    /// Swap two positive variable integers, a and b, without using a temporary variable.
    /// Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
    /// - Parameters:
    ///   - a: first number
    ///   - b: second number
    func swapTwoNumbersArithmetic(a: inout Int, b: inout Int) {
        a = a+b
        b = a - b
        a = a - b
    }
    
    func swapTwoNumbersTuples(a: inout Int, b: inout Int) {
        (a, b) = (b, a)
    }
    
    func test_swapTwoNumbers_UsingArithmetic() {
        var a = 1
        var b = 2
        swapTwoNumbersArithmetic(a: &a, b: &b)
        
        XCTAssertEqual(a, 2)
        XCTAssertEqual(b, 1)
    }
    
    func test_swapTwoNumbers_UsingTuples() {
        var a = 1
        var b = 2
        swapTwoNumbersTuples(a: &a, b: &b)
        
        XCTAssertEqual(a, 2)
        XCTAssertEqual(b, 1)

    }

}

