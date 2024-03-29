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
  
  func testNumberSolver_whenCyclicRotation1Called_returnsExpectedArray() {
    
    // Given
    let array = [3, 8, 9, 7, 6]
    let numberOfRotations = 3
    
    // When
    let result = sut.cyclicRotation(array, numberOfRotations)
    
    // Then
    XCTAssertEqual(result, [9, 7, 6, 3, 8], "the function should return [9, 7, 6, 3, 8]")
  }
  
  func testNumberSolver_whenCyclicRotation2Called_returnsExpectedArray() {
    
    // Given
    let array = [0, 0, 0]
    let numberOfRotations = 1
    
    // When
    let result = sut.cyclicRotation(array, numberOfRotations)
    
    // Then
    XCTAssertEqual(result, [0, 0, 0], "the function should return [0, 0, 0]")
  }
  
  func testNumberSolver_whenCyclicRotation3Called_returnsExpectedArray() {
    
    // Given
    let array = [1, 2, 3, 4]
    let numberOfRotations = 4
    
    // When
    let result = sut.cyclicRotation(array, numberOfRotations)
    
    // Then
    XCTAssertEqual(result, [1, 2, 3, 4], "the function should return [1, 2, 3, 4]")
  }
  
  // MARK: - how many pairs ?.
  
  func testNumberSolver_whenSockMerchantCalledWithData1_returnsThreePairs() {
    
    // Given
    let array = [1, 2, 1, 2, 1, 3, 2]
    let n = 7
    
    // When
    let result = sut.sockMerchant(n: n, array: array)
    
    // Then
    XCTAssertEqual(result, 2, "There is one pair of color 1, and one of color 2, There are three odd socks left, one of each color. The number of pairs is 2")
  }
  
  func testNumberSolver_whenSockMerchantCalledWithData2_returnsThreePairs() {
    
    // Given
    let array = [10, 20, 20, 10, 10, 30, 50, 10, 20]
    let n = 9
    
    // When
    let result = sut.sockMerchant(n: n, array: array)
    
    // Then
    XCTAssertEqual(result, 3, "There is 2 pair of color 10, and one of color 20, There are 4 odd socks left, The number of pairs is 3")
  }
  
  func testNumberSolver_whenJumpingOnCloudsData1_returnsThree() {
    
    // Given
    let array = [0, 0, 0, 0, 1, 0]
    
    // When
    let result = sut.jumpingOnClouds(clouds: array)
    
    // Then
    XCTAssertEqual(result, 3, " The game can be won in 3 jumps")
  }
  
  func testNumberSolver_whenJumpingOnCloudsData2_returnsFour() {
    
    // Given
    let array = [0, 0, 1, 0, 0, 1, 0]
    
    // When
    let result = sut.jumpingOnClouds(clouds: array)
    
    // Then
    XCTAssertEqual(result, 4, "The game can be won in 4 jumps")
  }

  // MARK: - Left Rotation
  
  func testNumberSolver_whenRotLeftWithData1_returnsCorrectArray() {
    
    // Given
    let array = [1, 2, 3, 4, 5]
    
    // When
    let result = sut.rotLeft(a: array, d: 4)
    
    // Then
    XCTAssertEqual(result, [5, 1, 2, 3, 4], "Expected Output was [5, 1, 2, 3, 4]")
  }
  
  func testNumberSolver_whenRotLeftWithData2_returnsCorrectArray() {
    //41 73 89 7 10 1 59 58 84 77 77 97 58 1 86 58 26 10 86 51
    // Given
    let array = [41, 73, 89, 7, 10, 1, 59, 58, 84, 77, 77, 97, 58, 1, 86, 58, 26, 10, 86, 51]
    
    // When
    let result = sut.rotLeft(a: array, d: 10)
    
    // Then
    XCTAssertEqual(result, [77, 97, 58, 1, 86, 58, 26, 10, 86, 51, 41, 73, 89, 7, 10, 1, 59, 58, 84, 77], "Expected Output was [77, 97, 58, 1, 86, 58, 26, 10, 86, 51, 41, 73, 89, 7, 10, 1, 59, 58, 84, 77]")
  }
  
  func testRandomNumber_returnValueInRange() {
    // Given
    let min = 1
    let max = 5
    var numberExistsInRange = false
    
    // When
    let randomNumber = sut.randomNumberFrom(min, to: max)
    
    // Then
    for number in min...max {
      if number == randomNumber { numberExistsInRange = true}
    }
    print("number is: \(randomNumber)")
    XCTAssertTrue(numberExistsInRange)
  }
  
  func testMyPow_whenNegativeNumberUsed_zeroIsReturned() {
    // When
    let number = sut.myPow(number: -1, power: 5)
    
    // Then
    XCTAssertEqual(number, 0)
  }
  
  func testMyPow_wheninputs4and3_shouldreturn64() {
    // When
    let number = sut.myPow(number: 4, power: 3)
    
    // Then
    XCTAssertEqual(number, 64)
  }
  
  func testMyPow_wheninputs2and8_shouldreturn256() {
    // When
    let number = sut.myPow(number: 2, power: 8)
    
    // Then
    XCTAssertEqual(number, 256)
  }
  
  func testMyPowRecursion_whenNegativeNumberUsed_zeroIsReturned() {
    // When
    let number = sut.myPowRecursion(number: -1, power: 5)
    
    // Then
    XCTAssertEqual(number, 0)
  }
  
  func testMyPowRecursion_wheninputs4and3_shouldreturn64() {
    // When
    let number = sut.myPowRecursion(number: 4, power: 3)
    
    // Then
    XCTAssertEqual(number, 64)
  }
  
  func testMyPowRecursion_wheninputs2and8_shouldreturn256() {
    // When
    let number = sut.myPowRecursion(number: 2, power: 8)
    
    // Then
    XCTAssertEqual(number, 256)
  }
  
  func testMyPowRecursion_wheninputsIsNumberToPowerZero_shouldreturn1() {
    // When
    let number = sut.myPowRecursion(number: 2, power: 0)
    
    // Then
    XCTAssertEqual(number, 1)
  }

}
