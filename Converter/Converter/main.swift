//
//  main.swift
//  Converter
//
//  Created by Ryan Brashear on 6/20/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Variable used to control the loop that runs the application
var finished: Bool = false

//Instance of the input manager that handles getting user input from the keyboard
let inputManager = InputManager()

let inchesToFeetConverter = InchesToFeetConverter()

//Function to display the main menu options for the converter
func displayMainMenu() {
    print("Welcome to the Converter Application: ")
    print("!. Convert inches to feet")
    print("2. Quit")
}

//Function to get the user's main menu option selection and carry out the appropriate operation
func getUserSelection() {
    if let userInput = Int(inputManager.getUserInput()) {
        switch userInput {
        case 1:
            inchesToFeetConverter.convertInchesToFeet()
        case 2:
            finished = true
        default:
            print("Invalid selection entered. Please try again.")
        }
    }
}

//Main loop that handles running the application and displaying the main menu and gtting user selections until the finished variable is set to true
while !finished {
    displayMainMenu()
    getUserSelection()
}
