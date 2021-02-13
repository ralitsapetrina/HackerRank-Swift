//
//  #7-10001st prime.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 13.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** 2 out of 5 SUCCESSFUL - needs rework *****

@main
class NthPrimeNumber {
    
    static func main() {
        calculateCases()
    }
    
    static func getTheNthPrimeNumber(for n: Int) -> Int {
        
        var primesCount = 1
        var currentPrime = 2
        var primeCandidate = 2
        var listOfPrimes = [2]
        while primesCount < n {
            primeCandidate += 1
            
            for number in listOfPrimes {
                
                if primeCandidate % number == 0 {
                    break
                }
                
                if listOfPrimes.last == number {
                    listOfPrimes.append(primeCandidate)
                    currentPrime = primeCandidate
                    primesCount += 1
                }
            }
        }
        
        return currentPrime
    }
    
    static func calculateCases() {
        
        // get the number of test cases
        guard let testCasesNumber = readLine(),
              let testCases = Int(testCasesNumber) else {
            return
        }
        
        // get the individual case value for every test
        for _ in 1...testCases {
            
            var result: Int = 0
            
            // get the test case value
            guard let testCaseValue = readLine(),
                  let testNumber = Int(testCaseValue) else {
                return
            }
         
            result = getTheNthPrimeNumber(for: testNumber)
            
            print(result)
        }
    }
}
