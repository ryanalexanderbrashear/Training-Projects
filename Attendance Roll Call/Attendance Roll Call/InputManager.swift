//
//  InputManager.swift
//  Name Fun
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//This class is designed to group utility functions involving retrieving user input
class InputManager {
    //Function to get user input from the keyboard
    func getUserInput() -> String {
        //Create a reference to our FileHandle standard input, which in this case is our keyboard
        let keyboard = FileHandle.standardInput
        
        //Get the input data from our keyboard
        let input = keyboard.availableData
        
        //Attempt to convert that input data to a string
        let str = NSString(data: input, encoding: String.Encoding.utf8.rawValue)
        if let string = str {
            //If it can be converted to a string (meaning that str is not nil), return the converted string after trimming whitespace and newline characters
            return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        } else {
            //If it cannot be converted to a string (meaning that str is nil), return an error string
            return "Invalid input!"
        }
    }
}
