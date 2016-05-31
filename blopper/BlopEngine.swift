//
//  BlopEngine.swift
//  blopper
//
//  Created by Cor Pruijs on 31/05/16.
//  Copyright © 2016 Cor Pruijs. All rights reserved.
//

import Foundation

class BlopEngine {
    
    var blopValue = 7
    
    init(blopValue: Int) {
        self.blopValue = blopValue
    }
    
    enum Answer {
        case number(Int)
        case blop
    }
    
    func getAnswer(number number: Int) -> Answer {
        if number % 7 == 0 || "\(number)".containsString("\(blopValue)"){
            return .blop
        } else {
            return .number(number)
        }
    }
    
}

