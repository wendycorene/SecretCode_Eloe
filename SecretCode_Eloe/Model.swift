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
        count = 0
        var num = 0
        for i in guess {
            if i == code[num] {
                count += 1
            }
            num += 1
        }
        return count
    }
    
    func statusMsg () -> String {
        status = "Attempt \(attempts): \(correctGuesses()) symbols correct"
        return status
    }
    
    func currentGuess () -> [String] {
        // I didn't need this, but here it is.
        return guess
    }
    
    func correctMatch () -> Bool {
        if guess == code {
            return true
        }
        return false
    }
    
    func resetStuff () {
        code = []
        for _ in 0..<4 {
            code.append(symbols[Int(arc4random_uniform(UInt32(symbols.count)))])
        }
        attempts = 0
    }
}
