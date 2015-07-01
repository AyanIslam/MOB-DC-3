//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Ayan Islam on 6/28/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
    
    func numberAtIndex(number: Int) -> Int {
        
        var retVal: Int = 0
        
        if number == 0 {
            retVal = 0
        } else if number == 1 {
            retVal = 1
        } else {
            for i in 2...number {
                retVal = numberAtIndex(i-1) + numberAtIndex(i-2)
            }
        }
        return retVal
    }
}

// var fibs = [0,1]
// var fibGenerator = GeneratorOf { () -> Int? in
// fibs.append(fibs.reduce(0, combine:+))
// return fibs.removeAtIndex(0)
// }
// 