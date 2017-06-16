//
//  main.swift
//  Attendance Roll Call
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Used to control program flow. Program ends when this is set to true
var finished: Bool = false

//Instance of the input manager class, used to retrieve input from the user
let inputManager = InputManager()

//An array of Person objects which holds all the people added to the attendance list
var people: [Person] = []

//Function to show the main menu by using multiple print statements
func showMainMenu() {
    print("MAIN MENU")
    print("1. Add a name")
    print("2. See all names")
    print("3. Look up a name")
    print("4. Remove a name")
    print("5. Quit")
}

//Function to add a person to the people array by getting the first and last name as user input, appending them to the array, and then sorting the array using the sortNames function
func addName() {
    print("Please enter the person's first name: ")
    let inputFirstName = inputManager.getUserInput()
    print("Please enter the person's last name: ")
    let inputLastName = inputManager.getUserInput()
    let newPerson = Person(firstName: inputFirstName, lastName: inputLastName)
    people.append(newPerson)
    sortNames()
}

//Function to sort the people stored in the array by last name using bubble sort
func sortNames() {
    //Used to store an instance of a Person temporarily, so we can switch values arround when they need to be swapped without losing data
    var temp: Person
    //For loop starting at 1 and ending at 1 less than the number of items in our array
    for i in 1..<people.count {
        //If the person at index i-1 has a last name that should appear later than the person at index i's, swap them, using the temp variable to store the the value of the person at index i
        if (people[i - 1].lastName) > (people[i].lastName) {
            temp = people[i]
            people[i] = people[i-1]
            people[i-1] = temp
        }
    }
}

//Function to print all the names that have been entered by iterating through the people array using a foreach loop
func showAllNames() {
    for person in people {
        print("\(person.firstName) \(person.lastName)")
    }
}

func lookupName() {
    var results: [Person] = []
    print("Please enter a first or last name you wish to look up: ")
    let lookupName = inputManager.getUserInput()
    for person in people {
        if person.firstName == lookupName || person.lastName == lookupName {
            results.append(person)
        }
    }
    
    for result in results {
        print("\(result.firstName) \(result.lastName)")
    }
}

//Function to select menu options by taking user input and using a switch statement to execute the proper functions
func selectMenuOption() {
    if let userSelection = Int(inputManager.getUserInput()) {
        switch userSelection {
        case 1:
            addName()
        case 2:
            showAllNames()
        case 3:
            lookupName()
        case 4:
            print("Remove a name selected")
        case 5:
            finished = true
        default:
            print("There is no corresponding menu option for that selection.")
        }
    } else {
        print("Invalid input entered!")
    }
}

//While finished is not true, continue running this loop to show the menu and allow the user to select a menu option
while !finished {
    showMainMenu()
    selectMenuOption()
}
