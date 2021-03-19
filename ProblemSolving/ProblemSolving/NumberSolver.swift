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
  
  // https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup&h_r=next-challenge&h_v=zen
  /*
   There is a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. The player can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus 1 or 2 The player must avoid the thunderheads. Determine the minimum number of jumps it will take to jump from the starting postion to the last cloud. It is always possible to win the game.

   For each game, you will get an array of clouds numbered 0 if they are safe or 1 if they must be avoided.

   Example

   Index the array from 0 ...6 The number on each cloud is its index in the list so the player must avoid the clouds at indices 1 and 5 They could follow these two paths: 0 - 2 - 4 - 6 or 0 - 2 - 3 - 4 - 6 The first path takes 2 jumps while the second takes 4 Return 3

   */
  
  /// Given an array of integers representing the clouds, determine the minimum number of jumps required to win
  /// - Parameters:
  ///   - clouds: the clouds as array of zeros and ones
  ///
  func jumpingOnClouds(clouds: [Int]) -> Int {
    var currentCloud = 0
    var numberOfJumps = 0
    while currentCloud != clouds.count - 1 {
      if currentCloud + 2 < clouds.count && clouds[currentCloud + 2] == 0 {
        currentCloud = currentCloud + 2
      } else {
        currentCloud = currentCloud + 1
      }
      numberOfJumps += 1
    }
    return numberOfJumps
  }
}
