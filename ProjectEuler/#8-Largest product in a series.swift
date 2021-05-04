//
//  #8-Largest product in a series.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 21.03.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

// Link in hackerrank.com: https://www.hackerrank.com/contests/projecteuler/challenges/euler008/problem
// ***** SUCCESSFUL *****

//@main
class LargestProductInSeries {
    
    static func main() {
        calculateCases()
    }
    
    static func calculateNumberOfPossibleSequences(inNumberWithNDigits N: Int, forSequenceWithKLenght K: Int) -> Int {
        var result = 0
         
        /* When we remove the testing number of digits K from the whole
         number of digits N we have the number of possible combinations
         minus one */
        result = N - K + 1
        
        return result
    }
    
    static func getValidTestSequences(testNumber: String, possibleSequences: Int, sequenceLenght: Int) -> Array<String> {
        var result = [String]()
        
        for sequence in 0...possibleSequences - 1 {
            let sequenceStart = testNumber.index(testNumber.startIndex, offsetBy: sequence)
            let sequenceEnd = testNumber.index(sequenceStart, offsetBy: sequenceLenght)
            let testSequence = testNumber[sequenceStart..<sequenceEnd]
            /* if the sequence contains 0 it will give a product of
             0 so we ignore it in the calculations */
            if !testSequence.contains("0") {
                result.append(String(testSequence))
            }
        }
        return result
    }
    
    static func getTheGreatestProductSequence(from sequences: [String]) -> Int {
        var greatestSequence = 0
        for sequence in sequences {
            // convert elements to Int so we can get the product if the sequence
            let sequenceArray = sequence.compactMap {Int(String($0))}
            let newCandidate = sequenceArray.reduce(1, *)
            if newCandidate > greatestSequence {
                greatestSequence = newCandidate
            }
        }
        return greatestSequence
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
            
            // get the test case values
            guard let testCaseValues = readLine() else {
                return
            }
            
            // get the components in the test case values
            let testComponents = testCaseValues.components(separatedBy: " ")
            
            // The N number of digits
            guard let numberOfDigits = Int(testComponents[0]) else {
                return
            }
            
            // The K sequence lenght
            guard let sequenceLenght = Int(testComponents[1]) else {
                return
            }
            
            // The test number with lenght of N number of digits
            guard let testNumber = readLine() else {
                return
            }
            
            // Calculate how much possible sequences we can have
            let possibleSequences = calculateNumberOfPossibleSequences(inNumberWithNDigits: numberOfDigits, forSequenceWithKLenght: sequenceLenght)
            
            // Get all the valig sequences that can return a product larger than 0
            let sequencesArray = getValidTestSequences(testNumber: testNumber, possibleSequences: possibleSequences, sequenceLenght: sequenceLenght)
            
            // Get the greatest product
            result = getTheGreatestProductSequence(from: sequencesArray)
            print(result)
        }
    }
}
