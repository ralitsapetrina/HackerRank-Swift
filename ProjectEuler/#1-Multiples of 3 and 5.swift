//
//  #1-Multiples of 3 and 5.swift
//  HackerRankSolutions
//
//  Created by Petrina on 23.03.20.
//  Copyright © 2020 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** SUCCESSFUL *****

@main
class MultiplesOfThreeAndFive {
    
    static func main() {
        calculateCases()
    }
    
    static func calcMultiplesSum(for number: Int, with multiplier: Int) -> Int {
        
        // check how many multipliers in number
        let rawCountOfMultiples: Double = Double(number) / Double(multiplier)
        var countOfMultiples = Int(rawCountOfMultiples)
        
        // if number is multiple of multiplier - take one count out
        // (we must exclude the number from the sum)
        if Double(countOfMultiples) == rawCountOfMultiples {
            countOfMultiples -= 1
        }
        
        // formula for calculating sum
        let sumOfMultipliers = (countOfMultiples * (countOfMultiples + 1)) / 2 * multiplier
        
        return sumOfMultipliers
    }


    
    static func calculateCases() {
        // The multiplier that is common for both 3 and 5
        let commonMultiplier = 3 * 5
        
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
            
            var sumOfMultipliers: Int = 0
            
            // add the multiples sum of 3 if the test value is greater that 3
            if testNumber > 3 {
                sumOfMultipliers += calcMultiplesSum(for: testNumber, with: 3)
            }
            
            // add the multiples sum of 5 if the test value is greater than 5
            if testNumber > 5 {
                sumOfMultipliers += calcMultiplesSum(for: testNumber, with: 5)
            }
            
            // reduce the multiples sum of the common multiplier if the test value is greater than it
            // We don't want to add the sum of the common multiplier twice
            if testNumber > commonMultiplier {
                sumOfMultipliers -= calcMultiplesSum(for: testNumber, with: commonMultiplier)
            }
            
            print(sumOfMultipliers)
        }
    }
}
