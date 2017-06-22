//
//  InchesToFeetConverter.swift
//  Converter
//
//  Created by Ryan Brashear on 6/22/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

class InchesToFeetConverter {
    //Function to get user input for a number of inches from the keyboard and convert it to feet
    func convertInchesToFeet() {
        print("Please enter the amount of inches you which to convert to feet: ")
        if let userInput = Int(inputManager.getUserInput()) {
            let feet = userInput / 12
            let inches = userInput % 12
            print("\(feet) feet, \(inches) inches")
        }
    }
}
