//
//  main.swift
//  State Capital Testing Game
//
//  Created by Ryan Brashear on 6/23/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

let inputManager = InputManager()

var correctStates: [String] = []
var incorrectStates: [String] = []

enum GradeLetter {
    case A
    case B
    case C
    case D
    case F
}

var gradeLetter: GradeLetter

for state in statesDictionary {
    let stateName = state.key
    let capitalName = state.value
    print("Please enter the state capital of \(stateName): ")
    let answer = inputManager.getUserInput().uppercased()
    if answer == capitalName {
        print("Correct!\n")
        correctStates.append(stateName)
    } else {
        print("Incorrect, the capital of \(stateName) is \(capitalName).\n")
        incorrectStates.append(stateName)
    }
}

let grade = (Double(correctStates.count) / Double(statesDictionary.count)) * 100

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

print("You scored a \(grade)%. Your letter grade is \(gradeLetter).\n")

print("Here are the states you didn't get correct:")

for stateName in incorrectStates {
    print(stateName)
}
