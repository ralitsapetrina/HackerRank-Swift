//
//  #2-Even Fibonacci numbers.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 7.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** SUCCESSFUL *****

//@main
class EvenFibonacciNumbers {
    
    static func main() {
        calculateCases()
    }

    static var evenNumbersSum: Int = 0
    
    static func calcEvenNumbersSumFromFibonacciSeqence(current: Int, next: Int, upperBound: Int) {

        var currentNum = current
        var nextNum = next
        
        // calculate the new next number - result from the previous two
        nextNum = current + next
        // assign the new current number
        currentNum = next
        
        // find if the current number is an even number
        if currentNum % 2 == 0 {
            evenNumbersSum += currentNum
        }
        
        // if the new next number is greater than the upper bound - stop the recursion
        guard nextNum < upperBound else {
            return
        }
        
        calcEvenNumbersSumFromFibonacciSeqence(current: currentNum, next: nextNum, upperBound: upperBound)
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
            
            /* If the upper bound is less than or equal to 2 the even Numbers
            sum is 0, because we have no even numbers in the sequence */
            guard testNumber > 2 else {
                print(0)
                return
            }
            
            // calculate the sum with recursion
            calcEvenNumbersSumFromFibonacciSeqence(current: 1, next: 2, upperBound: testNumber)
            print(evenNumbersSum)
            
            // restart the sum accumulation
            evenNumbersSum = 0
        }
    }
}
