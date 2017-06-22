//
//  InchesToFeetConverter.swift
//  Converter
//
//  Created by Ryan Brashear on 6/22/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

class InchesToFeetConverter: Converting {
    //Function to get user input for a number of inches from the keyboard and convert it to feet
    func convert(value: Int) {
        let feet = value / 12
        let inches = value % 12
        print("\(feet) feet, \(inches) inches")
    }
}
