//
//  #7-10001st prime.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 13.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// Link in hackerrank.com: https://www.hackerrank.com/contests/projecteuler/challenges/euler007/problem
// ***** 3 out of 5 SUCCESSFUL - others fail with timeout *****

//@main
class NthPrimeNumber {
    
    static func main() {
        calculateCases()
    }
    
    static func getTheNthPrimeNumber(for n: Int) -> Int {
        
        // the prime count is 2 because we we start checking for primes after the second prime
        var primesCount = 2
        // current prime equals to 3
        var currentPrime = 3
        // prime candidate equals to the current prime in the beginning
        var primeCandidate = 3
        
        // when the prime count equals the n value we want to return
        while primesCount < n {
            // on every iteration we add 2 to the candidate (we wont check even numbers)
            primeCandidate += 2
            if isPrime(for: primeCandidate) {
                // update the current prime
                currentPrime = primeCandidate
                // increment the primes count
                primesCount += 1
            }
        }
        
        // when we reach the Nth prime we return its value
        return currentPrime
    }
    
    static func isPrime(for primeCandidate: Int) -> Bool {
        
        // we check the candidate agains all odd numbers
        for number in stride(from: 3, to: primeCandidate, by: 2) {
            
            // for every number from the list we check if the candidate has a remainder 0
            if primeCandidate % number == 0 {
                // if the remainder is 0, the candidate is not prime and we return false
                return false
            }
            
            // if square of number is larger than the candidate we know the candidate is prime
            if number * number > primeCandidate {
                return true
            }
        }
        return true
    }
    
    static func calculateCases() {
        // get the number of test cases
        guard let testCasesNumber = readLine(),
              let testCases = Int(testCasesNumber) else {
            return
        }
        
        // get the individual case value for every test
        for _ in 1...testCases {
            
            // get the test case value
            guard let testCaseValue = readLine(),
                  let testNumber = Int(testCaseValue) else {
                return
            }
            // result equals to the first prime
            var result: Int = 2
            // if test number == 1 we will return the first prime which is 2
            if testNumber > 1 {
                result = getTheNthPrimeNumber(for: testNumber)
            }
            
            print(result)
        }
    }
}
