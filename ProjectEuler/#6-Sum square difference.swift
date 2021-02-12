//
//  #6-Sum square difference.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 12.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** SUCCESSFUL *****

//@main
class SumSquareDifference {
    
    static func main() {
        calculateCases()
    }
    
    static func getTheSumOfSquares(for n: Int) -> Int {
        var result: Int = 0
        
        /* formula for calculating the sum of the squares of the first n positive integers */
        
        result = (n * (n + 1) * ((2 * n) + 1)) / 6
        
        return result
    }
    
    static func getTheSquareOfSumOfInts(for n: Int) -> Int {
        var result: Int = 0
        
        /* formula for calculating the sum of the first n positive integers */
        
        let sumOfInts = (n * (n + 1)) / 2
        
        /* calculate the square of the sum */
        let squareOfSumOfInts = pow(Double(sumOfInts), 2)
        result = Int(squareOfSumOfInts)
        
        return result
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
            
            result = getTheSquareOfSumOfInts(for: testNumber) - getTheSumOfSquares(for: testNumber)
         
            print(result)
        }
    }
}
