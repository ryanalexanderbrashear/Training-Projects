//
//  main.swift
//  State Capital Testing Game
//
//  Created by Ryan Brashear on 6/23/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Instance of the InputManager class, used to handle user input
let inputManager = InputManager()

//Arrays to store both the state names the user got correct and didn't get correct
var correctStates: [String] = []
var incorrectStates: [String] = []

//Enumeration containing the different grade letters the user can receive
enum GradeLetter {
    case A
    case B
    case C
    case D
    case F
}

//Variable used to store the grade letter the user achieves, using the above enum
var gradeLetter: GradeLetter

//For each state in our dictionary of states
for state in statesDictionary {
    //Get the key and value
    let stateName = state.key
    let capitalName = state.value
    print("Please enter the state capital of \(stateName): ")
    //Get user input and make it uppercased
    let answer = inputManager.getUserInput().uppercased()
    //If the user input matches the capital of the current state
    if answer == capitalName {
        //Print congratulatory message and add it to the array of correct states
        print("Correct!\n")
        correctStates.append(stateName)
    //Otherwise
    } else {
        //Print the correct capital and add the state to the list of incorrect states
        print("Incorrect, the capital of \(stateName) is \(capitalName).\n")
        incorrectStates.append(stateName)
    }
}

//Calculate the user's grade based on the number of currect states divided by the number of total states, multiplied by 100
let grade = (Double(correctStates.count) / Double(statesDictionary.count)) * 100

//Assign the appropriate grade letter based on the calculated grade
if grade >= 90.0 {
    gradeLetter = .A
} else if grade >= 80.0 {
    gradeLetter = .B
} else if grade >= 70.0 {
    gradeLetter = .C
} else if grade >= 60.0 {
    gradeLetter = .D
} else {
    gradeLetter = .F
}

//Print off the grade and grade letter
print("You scored a \(grade)%. Your letter grade is \(gradeLetter).\n")

//If the user missed and states, print out the state names
if incorrectStates.count > 0 {
    print("Here are the states you didn't get correct:")

    for stateName in incorrectStates {
        print(stateName)
    }
}
