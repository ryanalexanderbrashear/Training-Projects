//
//  UniversalConverter.swift
//  Converter
//
//  Created by Ryan Brashear on 6/22/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Enum that stores the different conversion types the converter can perform, along with raw values corresponding to the conversion ratio
enum ConversionType: Int {
    case inchesToFeet = 12
    case secondsToMinutes = 60
    case feetToYards = 3
}

class UniversalConverter: Converting {
    
    //The selected conversion type that the converter will use to carry out operations
    var selectedConversionType: ConversionType!
    
    //Function to convert based on the selected conversion type
    func convert(value: Int) {
        
        //Value that will be used as the divisor in conversions (Ex. When converting from inches to feet, this will be set to 12 since there are 12 inches in 1 foot)
        var conversionDivisor: Int
        
        //The unit that will result from the conversion
        var convertedToUnit: String
        
        //The unit that is being converted from during the conversion
        var convertedFromUnit: String
        
        //Switch on the selected conversion type to set the divisor and units
        switch selectedConversionType! {
        case .inchesToFeet:
            conversionDivisor = ConversionType.inchesToFeet.rawValue
            convertedToUnit = "feet"
            convertedFromUnit = "inches"
        case .secondsToMinutes:
            conversionDivisor = ConversionType.secondsToMinutes.rawValue
            convertedToUnit = "minutes"
            convertedFromUnit = "seconds"
        case .feetToYards:
            conversionDivisor = ConversionType.feetToYards.rawValue
            convertedToUnit = "yards"
            convertedFromUnit = "feet"
        }
        
        //Carry out the conversion by getting the result of the division with the input value and the remainder using the modulus operator
        let conversionResult = value / conversionDivisor
        let conversionRemainder = value % conversionDivisor
        
        //Print the result and units
        print("\(conversionResult) \(convertedToUnit) \(conversionRemainder) \(convertedFromUnit)")
    }
}
