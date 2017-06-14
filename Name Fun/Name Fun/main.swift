//
//  main.swift
//  Name Fun
//
//  Created by Ryan Brashear on 6/13/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Function to get user input from the keyboard
func getUserInput() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
    if let string = str {
        return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    } else {
        return "Invalid input!"
    }
}

print("Please enter your name: ")
let name = getUserInput()

