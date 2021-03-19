//
//  NumberSolverTests.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 19/03/2021.
//

import XCTest
@testable import ProblemSolving

// MARK: - NumberSolverTests
//
class NumberSolverTests: XCTestCase {
  
  // MARK: - Properties
  
  var sut: NumberSolver!
  
  // MARK: - LifeCycle
  
  override func setUp() {
    super.setUp()
    sut = NumberSolver()
    
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
  }
    
  // MARK: - Binary Gap
  
  
  func testNumberSolver_whenBinaryGapFor9WasCalled_returnsLargestGapOfTwo() {
    let result = sut.binaryGapFor(9)
    
    XCTAssertEqual(result, 2, "number 9 has binary representation 1001 and contains a binary gap of length 2")
  }
  
  func testNumberSolver_whenBinaryGapFor529WasCalled_returnsLargestGapOfFour() {
    let result = sut.binaryGapFor(529)
    
    XCTAssertEqual(result, 4, "number 529 has binary representation 1000010001 and contains two binary gaps: one of length 4 and one of length 3")
  }
  
  func testNumberSolver_whenBinaryGapFor20WasCalled_returnsLargestGapOfOne() {
    let result = sut.binaryGapFor(20)
    
    XCTAssertEqual(result, 1, "umber 20 has binary representation 10100 and contains one binary gap of length 1")
  }
  
  func testNumberSolver_whenBinaryGapFor15WasCalled_returnsLargestGapOfZero() {
    let result = sut.binaryGapFor(15)
    
    XCTAssertEqual(result, 0, "The number 15 has binary representation 1111 and has no binary gaps.")
  }

  func testNumberSolver_whenBinaryGapFor32WasEntered_returnsLargestGapOfZero() {
    let result = sut.binaryGapFor(32)
    
    XCTAssertEqual(result, 0, "The number 32 has binary representation 100000 and has no binary gaps")
  }

  // MARK: - CyclicRotation

//  func testNumberSolver_whenBinaryGapFor32WasCalled_returnsLargestGapOfZero() {
//    let result = sut.binaryGapFor(32)
//
//    XCTAssertEqual(result, 0, "The number 32 has binary representation 100000 and has no binary gaps")
//  }

}
