//
//  Challenge20_NumberIsPrime.swift
//  ProblemSolvingTests
//
//  Created by Amr Hesham on 30/11/2021.
//

import XCTest

// MARK: - Challenge 20: Number is prime
//
class Challenge20_NumberIsPrime: XCTestCase {
    
    /// a function that accepts an integer as its parameter and returns true if the number is prime.
    /// - Parameters:
    ///     - number: to check if it's prime or not
    func isPrime(number: Int) -> Bool {
        guard number > 1 else { return false }
        for divisor in 2...Int(ceil(sqrt(Double(number)))) {
            if (number % divisor)  == 0 {
                return false
            }
        }
        return true
    }
    
    func test_isPrime_WhenNumberIs11ShouldReturnTrue() {
        XCTAssertTrue(isPrime(number: 11))
    }
    
    func test_isPrime_WhenNumberIs13ShouldReturnTrue() {
        XCTAssertTrue(isPrime(number: 13))
    }
    
    func test_isPrime_WhenNumberIs4ShouldReturnFalse() {
        XCTAssertFalse(isPrime(number: 4))
    }
    
    func test_isPrime_WhenNumberIs9ShouldReturnFalse() {
        XCTAssertFalse(isPrime(number: 9))
    }
    
    func test_isPrime_WhenNumberIs16777259ShouldReturnTrue() {
        XCTAssertTrue(isPrime(number: 16777259))
    }
    
//    func test_isPrimeNormal_performance() {
//        measure {
//            isPrime(number: 16777259)
//        }
//    }

}
