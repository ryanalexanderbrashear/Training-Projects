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

for state in statesDictionary {
    let stateName = state.key
    let capitalName = state.value
    print("Please enter the state capital of \(stateName): ")
    let answer = inputManager.getUserInput().uppercased()
    if answer == capitalName {
        print("Correct!")
        correctStates.append(stateName)
    } else {
        print("Incorrect, the capital of \(stateName) is \(capitalName).")
        incorrectStates.append(stateName)
    }
}

