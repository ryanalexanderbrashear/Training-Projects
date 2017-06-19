//
//  main.swift
//  Rock Paper Scissors
//
//  Created by Ryan Brashear on 6/16/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Instance of the InputManager class, used to handle getting user input from the keyboard
let inputManager = InputManager()

//Enumeration containing possible choices the user can make in a game of Rock, Paper, Scissors
enum RPSSelections: String {
    case rock = "ROCK"
    case paper = "PAPER"
    case scissors = "SCISSORS"
}

//Variable that handles the game loop. When this variable is true the game is done
var finished = false

//Variable which stores which selection the user has made, through the use of the RPSSelections enumeration
var userSelection: RPSSelections?

//Variable which stores which selection the computer has made, through the use of the RPSSelections enumeration
var computerSelection: RPSSelections?

//Function to show the main menu options of the game
func showMenu() {
    print("Welcome to RPS!")
    print("1. Play a game")
    print("2. Quit")
}

//Function for getting input from the user to determine which main menu option they wish to select, and carrying out the appropriate behavior
func getMenuSelection() {
    if let selectedMenuOption = Int(inputManager.getUserInput()) {
        switch selectedMenuOption {
        case 1:
            getUserSelection()
            getComputerSelection()
        case 2:
            finished = true
        default:
            print("There is no corresponding menu action for that number. Please try again.")
        }
    } else {
        print("Invalid selection made. Please try again.")
    }
}

//Function that sets the userSelection variable based on user input, or displays an error message if the input doesn't correspond to one of the choices
func getUserSelection() {
    print("Please enter Rock, Paper, or Scissors to make your selection: ")
    let userInput = inputManager.getUserInput().uppercased()
    switch userInput {
    case "ROCK":
        userSelection = .rock
    case "PAPER":
        userSelection = .paper
    case "SCISSORS":
        userSelection = .scissors
    default:
        print("Invalid selection made. Please try again.")
        return
    }
}

//Function that gets the computer's selection by generating a random number in the range 0-2 and setting the computerSelection variable properly based on that
func getComputerSelection() {
    let randomNumber = arc4random_uniform(3)
    switch randomNumber {
    case 0:
        computerSelection = .rock
    case 1:
        computerSelection = .paper
    case 2:
        computerSelection = .scissors
    default:
        print("There was an error making the computer's selection. Please try again.")
        return
    }
}

//Loop that keeps the game running until the finished variable is set to false
while !finished {
    showMenu()
    getMenuSelection()
}
