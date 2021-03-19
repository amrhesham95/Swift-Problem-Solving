//
//  NumberSolver.swift
//  ProblemSolving
//
//  Created by Amr Hesham on 19/03/2021.
//

import Foundation

// MARK: - NumberSolver
//
class NumberSolver {
  
  /// A binary gap within a positive integer N is any maximal sequence of consecutive zeros that is surrounded by ones at both ends in the binary representation of N.
  ///
  /// - Parameters:
  ///   - number: number to get the largest gap for
  func binaryGapFor(_ number: Int) -> Int {
    let binaryString =  String(number, radix: 2)
    var startIndex = 0
    var maxIndex = 0
    var currentGap = 0
    var maxGap = 0
    var foundOne = false
    for (index, digit) in binaryString.enumerated() {
      if foundOne {
        if digit == "1" {
          foundOne = true
          maxIndex = index
          currentGap = maxIndex - startIndex - 1
          maxGap = currentGap > maxGap ? currentGap : maxGap
          maxIndex = 0
          foundOne = false
        }
      } else {
        if digit == "1" {
          foundOne = true
          startIndex = index
        }
      }
    }
    return maxGap
  }
}
