//
//  main.swift
//  Dungeons And Dragons Character Creator
//
//  Created by Ryan Brashear on 6/14/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Parameters which will hold the generated values for each stat our character will have
var strengthValue: Int = 0
var dexterityValue: Int = 0
var constitutionValue: Int = 0
var intelligenceValue: Int = 0
var wisdomValue: Int = 0
var charismaValue: Int = 0

//Initialize a Dice object with six sides
let sixSidedDie = Dice(sides: 6)

//One way to get the final value for a stat is by calling the roll method three times sequentially on the dice object and adding each result to the stat value, as we see below:
strengthValue += sixSidedDie.roll()
print("Strength: \(strengthValue)")
strengthValue += sixSidedDie.roll()
print("Strength: \(strengthValue)")
strengthValue += sixSidedDie.roll()
print("Strength: \(strengthValue)")

print("Final strength value: \(strengthValue)")

//Another way to do this is by using a for loop to call the roll method. This is cleaner and easier to write than the code above:
//This loop runs 3 times, with the counter starting at 0 and incrementing by 1 until it reaches 2
for indexCounter in 0...2 {
    dexterityValue += sixSidedDie.roll()
    print("Counter for this iteration of the loop: \(indexCounter)")
    print("Dexterity: \(dexterityValue)")
}

print("Final dexterity value: \(dexterityValue)")

//Using the for loop, we can even generate the values for multiple stats at once easily:
for indexCounter in 0...2 {
    constitutionValue += sixSidedDie.roll()
    intelligenceValue += sixSidedDie.roll()
    wisdomValue += sixSidedDie.roll()
    charismaValue += sixSidedDie.roll()
}

print("Final constitution value: \(constitutionValue)")
print("Final intelligence value: \(intelligenceValue)")
print("Final wisdom value: \(wisdomValue)")
print("Final charisma value: \(charismaValue)")


