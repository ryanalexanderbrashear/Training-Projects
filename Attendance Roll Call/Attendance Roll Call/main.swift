//
//  main.swift
//  Attendance Roll Call
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

var finished: Bool = false

let inputManager = InputManager()

var people: [Person] = []

func showMainMenu() {
    print("MAIN MENU")
    print("1. Add a name")
    print("2. See all names")
    print("3. Look up a name")
    print("4. Remove a name")
    print("5. Quit")
}

func addName() {
    print("Please enter the person's first name: ")
    let inputFirstName = inputManager.getUserInput()
    print("Please enter the person's last name: ")
    let inputLastName = inputManager.getUserInput()
    let newPerson = Person(firstName: inputFirstName, lastName: inputLastName)
    people.append(newPerson)
}

func selectMenuOption() {
    if let userSelection = Int(inputManager.getUserInput()) {
        switch userSelection {
        case 1:
            addName()
        case 2:
            print("See all names selected")
        case 3:
            print("Look up a name selected")
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

while !finished {
    showMainMenu()
    selectMenuOption()
}
