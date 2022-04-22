//
//  Logic.swift
//  Calculator2
//
//  Created by Moussa Idaassi on 17/04/2022.
//


import SwiftUI

struct Logic {
    
    var value = 0.0
    var comma = 0.0
    var jump = 1.0
    var plus = 0.0
    var min = 0.0
    var multiplication = 0.0
    var division = 0.0
    var magic_number = 42.0
    var Output = 0.0

    // logic for operations
    mutating func didTap(action: String) {
        if action == "neg" {
            value = value * -1
        }
        else if action == "," {
            comma = 1
        }
        else if action == "+" {
            plus = 1
        }
        else if action == "-" {
            min = 1
        }
        else if action == "x" {
            multiplication = 1
        }
        else if action == "/" {
            division = 1
        }
        else if action == "magic_number" {
            value = magic_number
        }
        else if action == "=" {
            // print results
            value = Output
            // clean out operations
            plus = -1
            min = -1
            multiplication = -1
            division = -1
            comma = -1
        }
        // reset calculator
        else if action == "AC" {
            value = 0
            comma = 0.0
            plus = 0.0
            min = 0.0
            multiplication = 0.0
            division = 0.0
            Output = 0.0
        }
        else {
            value = 0.0
        }
    }
    
    // logic for digits
    mutating func didTap(action: Double) {
        // perfom plus
        if plus == 1 {
            Output = value + action
        }
        // perfom min
        else if min == 1 {
            Output = value - action
        }
        // perfom multiplication
        else if multiplication == 1 {
            Output = value * action
        }
        // perfom division
        else if division == 1 {
            Output = value / action
        }
        // perform comma
        else if comma == 1 {
            value = value + (action / (jump * 10))
            jump = jump * 10
            Output = value
        }
        // else show first digits
        else if value != 0 && plus >= 0 && min >= 0 && multiplication >= 0 && division >= 0 {
            value = value * 10 + action
            Output = value
        }
        // show first digit
        else {
            value = action
            Output = value
        }
        }
}

