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
}