//
//  StringsSolverTests.swift
//  StringsSolverTests
//
//  Created by Amr Hesham on 13/03/2021.
//

import XCTest
@testable import ProblemSolving

// MARK: - StringsSolverTests
//
class StringsSolverTests: XCTestCase {
  
  // MARK: - Properties
  
  var sut: StringsSolver!
  
  // MARK: - LifeCycle
  
  override func setUp() {
    super.setUp()
    sut = StringsSolver()
    
  }
  
  override func tearDown() {
    sut = nil
    super.tearDown()
  }
  
  // MARK: - Tests
  
  func testStringsSolver_whenHasUniqueValuesCalledWithNoDuplicate_returnsTrue() {
    let result = sut.hasOnlyUniqueCharacters(word: "amr")
    
    XCTAssertTrue(result, "Invalid result it should return true")
  }
}
