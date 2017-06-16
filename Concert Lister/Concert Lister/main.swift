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

//Array to store the concerts the user has entered
var concerts: [Concert] = []

/**** Getting the concert titles as user input ****/

print("Please enter the titles of the concerts you've attended (or done to quit): ")
while !finished {
    //Get user input from the keyboard
    let input = inputManager.getUserInput()
    //If the input is not equal to "done"
    if input != "done" {
        //Create a new concert with the user input
        let concert = Concert(title: input)
        //Append the new concert to our array of concerts
        concerts.append(concert)
    //If the input is equal to "done"
    } else {
        //Change finished to true, which will cause us to break out of the while loop
        finished = true
    }
}

/**** Printing the concerts ****/

//For each concert in our array of concerts, print out the title of the concert
for concert in concerts {
    print(concert.title)
}

/**** Rating the concerts ***/

print("Please enter a value between 1 and 5 to rate each concert: ")

//For each concert in our array of concerts, print out the title and ask for user input as a rating
for concert in concerts {
    print("\(concert.title): ")
    //If we obtain valid input that can be converted to an integer from the user
    if let userRating = Int(inputManager.getUserInput()) {
        //If the integer we have retrieved is between 1 and 5, assign the rating to the concert
        if userRating > 0 && userRating < 6 {
            concert.rating = userRating
        //Otherwise, display an error
        } else {
            print("Invalid rating entered!")
        }
    //If the user input we retrieve cannot be converted to an integer, display an error
    } else {
        print("Invalid rating entered!")
    }
}

/**** Sorting the concerts by rating and printing them ****/

//Create a for loop that iterates from 1 to 5
for index in 1...5 {
    //Use a foreach loop to iterate through our concerts
    for concert in concerts {
        //If the concert's rating is equivalent to the current for loop index, print the concert's title and rating
        if concert.rating == index {
            print("Concert title: \(concert.title) || Rating: \(concert.rating!)")
        }
    }
}



