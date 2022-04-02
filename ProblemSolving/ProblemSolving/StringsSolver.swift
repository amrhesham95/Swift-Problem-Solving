//
//  StringsSolver.swift
//  ProblemSolving
//
//  Created by Amr Hesham on 13/03/2021.
//

import Foundation

// MARK: - StringsSolver
//
class StringsSolver {
  
  /// Check if word has only unique charactersr, and returns true if the string has only unique letters
  ///
  /// - Parameters:
  ///   - word: word to check it's characaters
  func hasOnlyUniqueCharacters(word: String) -> Bool {
    let wordAsSet = Set(word)
    return wordAsSet.count == word.count
  }
  
  /// Check if word is a palindrome , returns true if the string reads the same when reversed, ignoring case.
  ///
  /// - Parameters:
  ///   - word: word to check it's characaters
  func isPalindrome(word: String) -> Bool {
    
    String(word.lowercased().reversed()) == word.lowercased()
  }
    
    /// Check if word is a palindrome , returns true if the string reads the same when reversed, ignoring case.
    ///
    /// - Parameters:
    ///   - word: word to check it's characaters
    func isPalindrome2(word: String) -> Bool {
        let n = word.count / 2
        let wordAsArray = Array(word.lowercased())
        for index in 0...n {
            if wordAsArray[index] != wordAsArray[((word.count - 1) - index)] {
                return false
            }
        }
        return true
    }

  
  /// Check two strings against each other, and returns true if they contain the same characters in any order taking into account letter case.
  ///
  /// - Parameters:
  ///   - firstWord: word to check against secondWord
  ///   - secondWord: word to check against firstWord
  func checkIfTwoWordsHasSameCharacters(firstWord: String, secondWord: String) -> Bool {
    firstWord.sorted() == secondWord.sorted()
  }
  
  /// Count the characters, and returns how many times a specific character appears into a word, taking case into account.
  ///
  /// - Parameters:
  ///   - word: word to check the character in
  ///   - character: character to be counted for how many time it was repeated in a word
  func countCharacterInWord(word: String, character: String) -> Int {
    let modifiedWord = word.replacingOccurrences(of: character, with: "")
    return word.count - modifiedWord.count
  }
  
  /*
   There is a string, s, of lowercase English letters that is repeated infinitely many times. Given an integer, n, find and print the number of letter a's in the first n letters of the infinite string.
   Example
      s = abcac
      n = 10
   The substring we consider is , abcacabcac the first  characters of the infinite string. There are  4 occurrences of a in the substring.
   */
  
  /// Count the characters, and returns the frequency of a in the substring
  ///
  /// - Parameters:
  ///   - s: The infinitely repeated string
  ///   - n: number to determine the substring to search in
  func repeatedString(s: String, n: Int) -> Int {
    if s.count == 1 {return n}
    var wordAsArray = Array(s)
    var reptitions = 0
    while wordAsArray.count < n {
      wordAsArray.append(contentsOf: s)
    }
    for index in 0 ..< n {
      reptitions = wordAsArray[index] == "a" ? reptitions + 1 : reptitions
    }
    return reptitions
  }
    
    /// Write your own version of the contains() method on String that ignores letter case, and without using the existing contains() method.
    ///
    /// - Parameters:
    ///   - s: The infinitely repeated string
    ///   - n: number to determine the substring to search in
    func fuzzyContains(firstWord: String, secondWord: String) -> Bool {
        return firstWord.uppercased().range(of: secondWord.uppercased()) != nil
    }

}
