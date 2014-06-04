//
//  one.swift
//  Project Euler
//
//  Created by Jesse Calkin on 6/3/14.
//  Copyright (c) 2014 Jesse Calkin. All rights reserved.
//
//    http://projecteuler.net/problem=1
//    If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
//
//    Find the sum of all the multiples of 3 or 5 below 1000.

import Foundation

var numberList = [3,5]
var limit = 1000
var answer = 0
var lcm = numberList[0] * numberList[1]

func sumMultiples(number: Int) -> Int {
    var numberOfTerms = limit / number
    var lastNumInSequence = number * numberOfTerms
    
    if (lastNumInSequence >= limit) {
        numberOfTerms -= 1
        lastNumInSequence = number * numberOfTerms
    }
    return numberOfTerms * ((2 * number) + (numberOfTerms-1) * number) / 2
}

func answerOne() {
    for i in numberList {
        answer += sumMultiples(i)
    }
    answer -= sumMultiples(lcm)
    println("the sum of all the multiples of 3 or 5 below 1000 is \(answer)")
}