//
//  Project Euler #1-Multiples of 3 and 5.swift
//  HackerRankSolutions
//
//  Created by Petrina on 23.03.20.
//  Copyright © 2020 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** Submission 4 *****

// ***** Submission 3 *****

//import Foundation
//
//let testCasesInput = readLine()!
//
//let testCases = Int(testCasesInput)!
//if testCases > 0 {
//for _ in 1...testCases {
//
//let input = readLine()
//let num: Int? = Int(input!)
////var arrayOfInts: Array<Int> = []
//var sum = 0
//    
//    if num! > 0 {
//        for myNum in 1...num! - 1 {
//            if myNum.isMultiple(of: 3) || myNum.isMultiple(of: 5) {
//                sum += myNum
//            }
//        }
//    }
//print(sum)
//}
//}

// ***** Submission 2 *****

//import Foundation
//
//let testCasesInput = readLine()!
//
//let testCases = Int(testCasesInput)!
//if testCases > 0 {
//for _ in 1...testCases {
//
//let input = readLine()
//let num: Int? = Int(input!)
////var arrayOfInts: Array<Int> = []
//var sum = 0
//
//    if num! > 0 {
//        for myNum in 1...num! - 1 {
//            let numMultByThree = Double(myNum) / 3
//            let numMultByFive = Double(myNum) / 5
//            if  numMultByThree == floor(numMultByThree) || numMultByFive == floor(numMultByFive) {
//                sum += myNum
//            }
//        }
//    }
//print(sum)
//}
//}

// ***** Submission 1 *****

//import Foundation
//
//let testCasesInput = readLine()!
//
//let testCases = Int(testCasesInput)!
//
//for _ in 1...testCases {
//
//let input = readLine()
//let num: Int? = Int(input!)
//var arrayOfInts: Array<Int> = []
//
//for myNum in 1...num! - 1 {
//    let numMultByThree = Double(myNum) / 3
//    let numMultByFive = Double(myNum) / 5
//    if  numMultByThree == floor(numMultByThree) || numMultByFive == floor(numMultByFive) {
//        arrayOfInts.append(myNum)
//    }
//}
//
//let sum = arrayOfInts.reduce(0, +)
//print(sum)
//}
