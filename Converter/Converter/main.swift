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

//Instance of the InchesToFeetConverter
let inchesToFeetConverter = InchesToFeetConverter()

//Instance of the SecondsToMinutesConverter
let secondsToMinutesConverter = SecondsToMinutesConverter()

//Instance of the UniversalConverter
let universalConverter = UniversalConverter()

//Function to display the main menu options for the converter
func displayMainMenu() {
    print("Welcome to the Converter Application: ")
    print("1. Convert inches to feet")
    print("2. Convert seconds to minutes")
    print("3. Use the Universal Converter")
    print("4. Quit")
}

//Function to get the user's main menu option selection and carry out the appropriate operation
func getUserSelection() {
    if let userInput = Int(inputManager.getUserInput()) {
        switch userInput {
        case 1:
            convertInchesToFeet()
        case 2:
            convertSecondsToMinutes()
        case 3:
            getUniversalConversionType()
        case 4:
            finished = true
        default:
            print("Invalid selection entered. Please try again.")
        }
    }
}

//Function that gets the number of inches the user wishes to convert, and then calls the convert function for the inchesToFeetConverter
func convertInchesToFeet() {
    print("Please enter the number of inches you wish to convert: ")
    if let inputInches = Int(inputManager.getUserInput()) {
        inchesToFeetConverter.convert(value: inputInches)
    }
}

//Function that gets the number of seconds the user wishes to convert, and then calls the convert function for the inchesToFeetConverter
func convertSecondsToMinutes() {
    print("Please enter the number of seconds you wish to convert: ")
    if let inputSeconds = Int(inputManager.getUserInput()) {
        secondsToMinutesConverter.convert(value: inputSeconds)
    }
}

//Function that gets the type of conversion the user wants to do and assigns the Universal Converter's selected conversion type based on that. The convertUniversal function is then called
func getUniversalConversionType() {
    print("Please select the type of conversion you wish to perform: ")
    print("1. Convert inches to feet")
    print("2. Convert seconds to minutes")
    
    if let userSelection = Int(inputManager.getUserInput()) {
        switch userSelection {
        case 1:
            universalConverter.selectedConversionType = ConversionType.inchesToFeet
        case 2:
            universalConverter.selectedConversionType = ConversionType.secondsToMinutes
        default:
            print("Invalid selection. Please try again.")
            return
        }
        convertUniversal()
    }
}

//Function that gets the value the user wishes to convert, and then calls the convert function for the universalConverter
func convertUniversal() {
    print("Please enter the value you wish to convert: ")
    if let inputValue = Int(inputManager.getUserInput()) {
        universalConverter.convert(value: inputValue)
    }
}

//Main loop that handles running the application and displaying the main menu and gtting user selections until the finished variable is set to true
while !finished {
    displayMainMenu()
    getUserSelection()
}
