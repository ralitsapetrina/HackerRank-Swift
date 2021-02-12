//
//  #3-Largest prime factor.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 12.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** SUCCESSFUL *****

//@main
class LargestPrimeFactor {
    
    static func main() {
        calculateCases()
    }
    
    static func getLargestPrimeFactorOf(number: Int) -> Int {
        // the numbers 1 to 3 are all the largest prime factors of themselves
        if number < 4 {
            return number
        }
        
        /* If the number doesn't divide on numbers between 1 and sqrt(number)
         then it or its square root are prime factors.
         - If the number is prime itself it will not divide on the numbers less than
         it's square root.
         - If the number's square root is prime then it is the largest prime factor
         of the number. */
        
        let limitDivider = Int(sqrt(Double(number)))
        for divider in 2...limitDivider {
            if number % divider == 0 {
                var listOfPrimeFactors = [divider]
                
                /* Recursively perform the same algorithm for
                 the number divided by a prime factor until we reach either
                 a prime factor number or a prime factor square root
                 and append it to the list of prime factors */
                
                listOfPrimeFactors.append(getLargestPrimeFactorOf(number: number / divider))
                
                /* Get the largest prime factor number */
                guard let largestPrimeFactor = listOfPrimeFactors.max() else {
                    return number
                }
                
                return largestPrimeFactor
            }
        }
        
        return number
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
            
            result = getLargestPrimeFactorOf(number: testNumber)
         
            print(result)
        }
    }
}
