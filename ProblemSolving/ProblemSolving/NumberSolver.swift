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
  
  /// Rotate an array to the right by a given number of steps.
  ///
  /// - Parameters:
  ///   - array: array of numbers to be rotated
  ///   - rotationsCount: integer to determine number of rotations
  public func cyclicRotation(_ array : [Int], _ rotationsCount :Int) -> [Int] {
    var arr: [Int] = Array(repeating: 0, count: array.count)
      // write your code in Swift 4.2.1 (Linux)
      for index in 0 ..< array.count {
        arr[ (index + rotationsCount) % array.count ] = array[index]
      }
      return arr
  }

  //https://www.hackerrank.com/challenges/sock-merchant/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
  /// Given an array of integers representing the color of each sock, determine how many pairs of socks with matching colors there are.
  /// - Parameters:
  ///   - n: integer to determine socks count
  ///   - array: array representing sock to get it's pairs
  func sockMerchant(n: Int, array: [Int]) -> Int {
    var dictionary: Dictionary<Int, Int> = [:]
    var pairs = 0
    for (index, sock) in array.enumerated() {
      if dictionary[sock] != nil {
        pairs += 1
        dictionary.removeValue(forKey: sock)
      }else {
        dictionary.updateValue(index, forKey: sock)
      }
    }
    
    return pairs
  }
}
