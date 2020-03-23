//
//  main.swift
//  HackerRankSolutions
//
//  Created by Petrina on 23.03.20.
//  Copyright © 2020 Ralitsa Petrina. All rights reserved.
//

import Foundation

func calcFivesCount(num: Int) -> Int {
    var fivesCount: Int = ((num * 2) / 10)
    if num.isMultiple(of: 10) {
        fivesCount -= 1
    }
    return fivesCount
}

func calcThreesCount(num: Int) -> Int {
    var threesCountRaw: Double = (Double(num) / 3)
    if floor(threesCountRaw) == threesCountRaw {
        threesCountRaw -= 1
    }
    return Int(threesCountRaw)
}

let testCasesInput = readLine()!

let testCases = Int(testCasesInput)!
var array: Array<Int> = []

for _ in 1...testCases {

let input = readLine()
let num: Int? = Int(input!)
var sum: Int = 0



    }
    




