//
//  SecondsToMinutesConverter.swift
//  Converter
//
//  Created by Ryan Brashear on 6/22/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

class SecondsToMinutesConverter: Converting {
    //Function to get user input for a number of seconds from the keyboard and convert it to minutes
    func convert(value: Int) {
        let minutes = value / 60
        let seconds = value % 60
        print("\(minutes) minutes, \(seconds) seconds")
    }
}
