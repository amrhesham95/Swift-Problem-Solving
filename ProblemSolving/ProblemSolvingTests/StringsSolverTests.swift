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
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_3_returnsFalse() {
    let result = sut.isPalindrome(word: "Never odd or even")
    
    XCTAssertFalse(result, "The string “Never odd or even” should return false; even though the letters are the same in reverse, the spaces are in different places.")
  }
  
  func testStringsSolver_whenIsPalindromeCalledWithWord_4_returnsFalse() {
    let result = sut.isPalindrome(word: "Hello, world")
    
    XCTAssertFalse(result, "The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.")
  }

  // MARK: - Do two strings contain the same characters?
  
  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_1_returnsTrue() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "abca", secondWord: "abca")
    
    XCTAssertTrue(result, "The strings “abca” and “abca” should return true.")
  }

  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_2_returnsTrue() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "abc", secondWord: "cba")
    
    XCTAssertTrue(result, "The strings “abc” and “cba” should return true.")
  }
  
  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_3_returnsTrue() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "a1 b2", secondWord: "b1 a2")
    
    XCTAssertTrue(result, "The strings “a1 b2” and “b1 a2” should return true.")
  }

  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_4_returnsFalse() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "abc", secondWord: "abca")
    
    XCTAssertFalse(result, "The strings “abc” and “abca” should return false.")
  }
  
  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_5_returnsFalse() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "abc", secondWord: "Abc")
    
    XCTAssertFalse(result, "The strings “abc” and “Abc” should return false.")
  }
  
  func testStringsSolver_whenCheckIfTwoWordsHasSameCharacters_6_returnsFalse() {
    let result = sut.checkIfTwoWordsHasSameCharacters(firstWord: "abc", secondWord: "cbAa")
    
    XCTAssertFalse(result, "The strings “abc” and “cbAa” should return false.")
  }
  
  // MARK: - Count the characters
  
  func testStringsSolver_whenCountCharacterInWord_1_returnsTwo() {
    let result = sut.countCharacterInWord(word: "The rain in Spain", character: "a")
    
    XCTAssertEqual(result, 2, "The letter “a” appears twice in “The rain in Spain”")
  }
  
  func testStringsSolver_whenCountCharacterInWord_2_returnsFour() {
    let result = sut.countCharacterInWord(word: "Mississippi", character: "i")
    
    XCTAssertEqual(result, 4, "The letter “i” appears four times in “Mississippi”.")
  }

  func testStringsSolver_whenCountCharacterInWord_3_returnsThree() {
    let result = sut.countCharacterInWord(word: "Hacking with Swift", character: "i")
    
    XCTAssertEqual(result, 3, "The letter “i” appears three times in “Hacking with Swift”.")
  }


}
