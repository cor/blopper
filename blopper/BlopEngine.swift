//
//  BlopEngine.swift
//  blopper
//
//  Created by Cor Pruijs on 31/05/16.
//  Copyright © 2016 Cor Pruijs. All rights reserved.
//

import Foundation

class BlopEngine {
    
    var currentCount = 1
    var blopValue = 7
    
    var currentAnswer: Answer {
        return getAnswer(number: currentCount)
    }
    
    init(blopValue: Int) {
        self.blopValue = blopValue
    }
    
    enum Answer {
        case number(Int)
        case blop
    }
    
    private func getAnswer(number number: Int) -> Answer {
        if number % 7 == 0 || "\(number)".containsString("\(blopValue)"){
            return .blop
        } else {
            return .number(number)
        }
    }
    
    func next() {
        currentCount += 1
    }
    
}

