//
//  TemplateWithNNumberOfTestCases.swift
//  HackerRankSolutions
//
//  Created by Ralitsa Petrina on 7.02.21.
//  Copyright © 2021 Ralitsa Petrina. All rights reserved.
//

import Foundation


// Uncomment @main to use
//@main
class TemplateClass {
    
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
            guard let testCaseValue = readLine(),
                  let testNumber = Int(testCaseValue) else {
                return
            }
         
            print(result)
        }
    }
}
