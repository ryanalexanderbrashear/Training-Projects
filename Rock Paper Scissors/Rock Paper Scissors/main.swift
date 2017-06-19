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
            printSelections()
            decideWinner()
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

//Function to print the selections made by the user and the computer
func printSelections() {
    if let userSelected = userSelection?.rawValue {
        print("User picked: \(userSelected)")
    }
    
    if let computerSelected = computerSelection?.rawValue {
        print("Computer picked: \(computerSelected)")
    }
}

func decideWinner() {
    guard let userSelected = userSelection else {
        return
    }
    
    guard let computerSelected = computerSelection else {
        return
    }
    
    //Cleaner solution, using a switch statement using a tuple containing the user selection and computer selection
//    switch (userSelected, computerSelected) {
//    //Draw cases
//    case (.rock, .rock):
//        print("Draw")
//    case (.paper, .paper):
//        print("Draw")
//    case (.scissors, .scissors):
//        print("Draw")
//        
//    //Computer win cases
//    case (.rock, .paper):
//        print("Computer wins")
//    case (.paper, .scissors):
//        print("Computer wins")
//    case (.scissors, .rock):
//        print("Computer wins")
//    
//    //User win cases
//    case (.rock, .scissors):
//        print("User wins")
//    case (.paper, .rock):
//        print("User wins")
//    case (.scissors, .paper):
//        print("User wins")
//    }
    
    //Less clean solution using if statements. However, this uses the logical AND and NOT operators
    if userSelected == computerSelected {
        print("Draw")
    }
    
    if userSelected == .rock && computerSelected != .scissors {
        print("Computer wins")
    }
    
    if userSelected == .rock && computerSelected == .scissors {
        print("User wins")
    }
    
    if userSelected == .paper && computerSelected != .rock {
        print("Computer wins")
    }
    
    if userSelected == .paper && computerSelected == .rock {
        print("User wins")
    }
    
    if userSelected == .scissors && computerSelected != .paper {
        print("Computer wins")
    }
    
    if userSelected == .scissors && computerSelected == .paper {
        print("User wins")
    }
}

//Loop that keeps the game running until the finished variable is set to false
while !finished {
    showMenu()
    getMenuSelection()
}
