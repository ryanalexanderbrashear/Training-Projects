//
//  main.swift
//  Name Fun
//
//  Created by Ryan Brashear on 6/13/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

/*********************** 1 ***********************/

//Create an instance of our InputManager class, used to retrieve user input from the keyboard
let inputManager = InputManager()

//Prompt to request the user enters their name
print("Please enter your name: ")

//Call the function from our InputManager class to get the user input from the keyboard and assign it to a constant (also, uppercase all the letters so that later when we sort the name characters we will get the proper behavior)
let name = inputManager.getUserInput().uppercased()

/*********************** 2 ***********************/

//Create an empty array of characters used to store each character in our name string as we break it apart
var characterArray: [Character] = []

//Add each character in the name string to our character array
for character in name.characters {
    characterArray.append(character)
}

//Create an empty string which we will use to hold our reversed name string
var reversedName = ""

//Go through our character array in reverse (by using stride), and add each character to our reversed name string
for index in stride(from: characterArray.count, to: 0, by: -1) {
    reversedName.append(characterArray[index-1])
}

//Finally, print out the reversed name
print(reversedName)

/*********************** 3 ***********************/

//Get the number of characters in the name the user has entered, and store it in a constant
let numberOfCharactersInName = name.characters.count

//Print the number of characters
print(numberOfCharactersInName)

/*********************** 4 ***********************/

//Sort the array of characters by using a built in Swift function. Since our array contains characters, it will sort them in ascending (alphabetical) order. Assign the sorted array to a constant
let sortedCharacterArray = characterArray.sorted()

//Print out each character in our new sorted array, showing that they have been sorted properly
for character in sortedCharacterArray {
    print(character)
}
