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
    var count: Int = 0
    var code: [String] = []
    var guess: [String] = []
    var attempts: Int = 0
    var onSymbol: Int = 0
    var status: String = "This is a status message for the game"
    
    
    init (count: Int) {
        for _ in 0..<count {
            code.append(symbols[Int(arc4random_uniform(UInt32(symbols.count)))])
        }
    }
    
    func addSymbol () {
        onSymbol += 1
        status = "Attempt \(attempts): X symbols guessed"
    }
    
    func correctGuesses () -> Int {
        for i in guess {
            for j in code {
                if i == j {
                    count += 1
                }
            }
        }
        return count
    }
    
    func statusMsg () -> String {
        return status
    }
    
    func currentGuess () -> [String] {
        return guess
    }
    
    func correctMatch () -> Bool {
        if guess == code {
            return true
        }
        return false
    }
    
    func resetStuff () {
        //This should reset
    }
}
