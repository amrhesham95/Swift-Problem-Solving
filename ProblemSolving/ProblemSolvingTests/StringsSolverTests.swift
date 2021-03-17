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
    
  // MARK: - Are the letters unique?
  
  
  func testStringsSolver_whenHasUniqueValuesCalledWithNoDuplicate_returnsTrue() {
    let result = sut.hasOnlyUniqueCharacters(word: "amr")
    
    XCTAssertTrue(result, "Invalid result it should return true")
  }
  
  func testStringsSolver_whenHasUniqueValuesCalledCaseSensitiveData_returnsTrue() {
    let result = sut.hasOnlyUniqueCharacters(word: "AaBbCc")
    
    XCTAssertTrue(result, "Invalid result it should return true")
  }
  
  func testStringsSolver_whenHasUniqueValuesCalledWithWordWithRepeatedCharacters_returnsFalse() {
    let result = sut.hasOnlyUniqueCharacters(word: "Hello, world")
    
    XCTAssertFalse(result, "Invalid result it should return false as there are two letters L")
  }
  
  // MARK: - Is a string a palindrome?
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_1_returnsTrue() {
    let result = sut.isPalindrome(word: "Rotor")
    
    XCTAssertTrue(result, "Invalid result it should return true as Rotor is a palindrome")
  }
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_2_returnsTrue() {
    let result = sut.isPalindrome(word: "Rats live on no evil star")
    
    XCTAssertTrue(result, "The string “Rats live on no evil star” should return true.")
  }
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_3_returnsTrue() {
    let result = sut.isPalindrome(word: "Never odd or even")
    
    XCTAssertFalse(result, "The string “Never odd or even” should return false; even though the letters are the same in reverse, the spaces are in different places.")
  }
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_4_returnsTrue() {
    let result = sut.isPalindrome(word: "Hello, world")
    
    XCTAssertFalse(result, "The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.")
  }


}

