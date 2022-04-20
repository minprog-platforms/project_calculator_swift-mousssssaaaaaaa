//
//  Logic.swift
//  Calculator2
//
//  Created by Moussa Idaassi on 17/04/2022.
//


import SwiftUI

struct Logic {
    
    var value = "0"

    // LOGIC (moet nog worden verplaatst)?????????
    mutating func didTap(action: String) {
        // using 'AC'
        if action == "AC" {
            self.value = "0"
        }
        // berekeningen, met strings of eerst string> int??????
    //    // using '+'
    //    else if action == "+" {
    //        let sum = Int(action) + Int(value)
    //        self.value = "\(sum)"
    //        self.value = "\(5 + 5)"
    //    }
        
        // using digits
        else if self.value == "0" {
            value = action
        }
        else {
            self.value = "\(self.value)\(action)"
        }
        }
}

