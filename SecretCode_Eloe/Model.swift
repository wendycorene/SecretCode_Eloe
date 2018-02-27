//
//  Model.swift
//  SecretCode_Eloe
//
//  Created by Eloe,Wendy C on 2/27/18.
//  Copyright © 2018 Eloe,Wendy C. All rights reserved.
//

import Foundation

class CodeWord {
    var symbols : [String] = ["A", "B", "C", "D", "E"]
    var count: Int = 4
    var code: [String] = []
    var guess: [String] = []
    var attempts: Int = 0
    var onSymbol: Int = 0
    var status: String = "This is a status message for the game"
    
    
    init (count: Int) {
        for i in 0...count {
            code[i] = symbols[Int(arc4random_uniform(UInt32(symbols.count)))]
        }
    }
}
