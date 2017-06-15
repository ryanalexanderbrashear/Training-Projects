//
//  main.swift
//  Concert Lister
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Boolean value used to control whether the user is done entering concert names or not
var finished: Bool = false

//Create an instance of the InputManager class so we can get user input
let inputManager = InputManager()

print("Please enter the titles of the concerts you've attended (or done to quit): ")
while !finished {
    //Get user input from the keyboard
    let input = inputManager.getUserInput()
    //If the input is not equal to "done"
    if input != "done" {
        //Create a new concert with the user input
        let concert = Concert(title: input)
    //If the input is equal to "done"
    } else {
        //Change finished to true, which will cause us to break out of the while loop
        finished = true
    }
}

