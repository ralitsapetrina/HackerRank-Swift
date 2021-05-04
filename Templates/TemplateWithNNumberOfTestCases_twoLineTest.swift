//
//  TemplateWithNNumberOfTestCases_twoLineTest.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 21.03.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation

//@main
class TemplateClass_twoLineTest {
    
    static func main() {
        calculateCases()
    }
    
    static func someFunc() {
        
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
            guard let testCaseValue_1 = readLine() else {
                return
            }
            
            guard let testCaseValue_2 = readLine() else {
                return
            }
         
            print(result)
        }
    }
}
