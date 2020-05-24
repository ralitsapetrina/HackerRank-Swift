//
//  Project Euler #1-Multiples of 3 and 5.swift
//  HackerRankSolutions
//
//  Created by Petrina on 23.03.20.
//  Copyright © 2020 Ralitsa Petrina. All rights reserved.
//

import Foundation

// ***** Submission 5 ***** 4/6 tests successful. No longer past time limits, but still wrong answers

//func calcFivesSum(num: Int) -> Int {
//    var fivesCountRaw: Double = (Double(num) / 5)
//    if floor(fivesCountRaw) == fivesCountRaw {
//        fivesCountRaw -= 1
//    }
//    let fivesCount = Int(fivesCountRaw)
//    var sumOfFives: Double = 0
//    let halfCount = 0.5 * Double(fivesCount)
//    let calculations = 10 + (fivesCount - 1) * 5
//    sumOfFives = halfCount * Double(calculations)
//    return Int(sumOfFives)
//}
//
//func calcThreesSum(num: Int) -> Int {
//    var threesCountRaw: Double = (Double(num) / 3)
//    if floor(threesCountRaw) == threesCountRaw {
//        threesCountRaw -= 1
//    }
//    let threesCount = Int(threesCountRaw)
//    var sumMultsToFive: Double = 0
//
//    if threesCount >= 5 {
//        let multsToFiveCount = threesCount / 5
//        let halfCount = 0.5 * Double(multsToFiveCount)
//        let calculations = 30 + (multsToFiveCount - 1) * 15
//        sumMultsToFive = halfCount * Double(calculations)
//    }
//
//    var sumOfThrees: Double = 0
//    let halfCount = 0.5 * Double(threesCount)
//    let calculations = 6 + (threesCount - 1) * 3
//    sumOfThrees = halfCount * Double(calculations)
//    return Int(sumOfThrees - sumMultsToFive)
//}
//
//let testCasesInput = readLine()!
//
//let testCases = Int(testCasesInput)!
//var array: Array<Int> = []
//
//for _ in 1...testCases {
//
//    let input = readLine()
//    let num: Int? = Int(input!)
//    var sum: Int = 0
//    if num! > 3 {
//        sum += calcThreesSum(num: num!)
//    }
//    if num! > 5 {
//        sum += calcFivesSum(num: num!)
//    }
//    print(sum)
//}

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
