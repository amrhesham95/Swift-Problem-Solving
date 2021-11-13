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
  
  /// a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
  func fizzBuzzNumbers() {
    for number in 1...100 {
      if ( (number % 3  == 0) && (number % 5  == 0) ) {
        print("Fizz Buzz")
      }
      else if (number % 3  == 0) {
        print("Fizz")
      }
      else if (number % 5  == 0) {
        print("Buzz")
      }
      else {
        print(number)
      }
    }
  }
  
  /// Write a function that accepts positive minimum and maximum integers, and returns a random number between those two bounds, inclusive.
  /// - Parameters:
  ///   - min: minimum bound
  ///   - max: maximum bound
  func randomNumberFrom(_ min: Int, to max: Int) -> UInt32 {
    return arc4random_uniform( UInt32(max - min + 1) ) + UInt32(min)
    
  }
  
  /// a function that accepts positive two integers, and raises the first to the power of the second.
  func myPow(number: Int, power: Int) -> Int {
    guard number > 0, power > 0 else { return 0 }
    var returnValue = number
    
    for _ in 1..<power {
      returnValue *= number
    }
    
    return returnValue
  }
  
  /// a function that accepts positive two integers, and raises the first to the power of the second.
  func myPowRecursion(number: Int, power: Int) -> Int {
    if power == 0 { return 1 }
    guard number > 0, power > 0 else { return 0 }
    if power == 1 { return number}
    
    return number * myPowRecursion(number: number, power: power - 1)
  }


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
  
  
  /*A left rotation operation on an array shifts each of the array's elements 1 unit to the left. For example, if 2 left rotations are performed on array [1, 2, 3, 4, 5], then the array would become [3, 4, 5, 1, 2]. Note that the lowest index item moves to the highest index in a rotation. This is called a circular array.
   .*/
  
  ///  Given an array a of n integers and a number ,d , perform d left rotations on the array, return the updated array to be printed as a single line of space-separated integers
  /// - Parameters:
  ///   - a: array of numbers to be rotated
  ///   - d: integer to determine number of rotations
  func rotLeft(a: [Int], d: Int) -> [Int] {
    var rotatedArray = a
    var choosenIndex = 0
    for (index, item) in a.enumerated() {
      let steps = (index - d)
      choosenIndex =  steps >= 0 ? steps : ( steps + a.count)
      rotatedArray[ choosenIndex ] = item
    }
    return rotatedArray
  }
}
