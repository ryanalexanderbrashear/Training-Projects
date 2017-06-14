//
//  main.swift
//  Name Fun
//
//  Created by Ryan Brashear on 6/13/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

/*********************** 1 ***********************/

//Function to get user input from the keyboard
func getUserInput() -> String {
    let keyboard = FileHandle.standardInput
    let inputData = keyboard.availableData
    let str = NSString(data: inputData, encoding: String.Encoding.utf8.rawValue)
    if let string = str {
        return string.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    } else {
        return "Invalid input!"
    }
}

//Prompt to request the user enters their name
print("Please enter your name: ")

//Call the function to get the user input from the keyboard and assign it to a constant
let name = getUserInput()

/*********************** 2 ***********************/

//Create an empty array of characters used to store each character in our name string as we break it apart
var characterArray: [Character] = []

//Add each character in the name string to our character array
for character in name.characters {
    characterArray.append(character)
}

//Create an empty string which we will use to hold our reversed name string
var reversedName = ""

//Go through our character array in reverse, and add each character to our reversed name string
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

