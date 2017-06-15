//
//  Dice.swift
//  Dungeons And Dragons Character Creator
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Class that represents a die, which will contain a function to roll the die and return a result
class Dice {
    
    //This corresponds to the number of sides the die has
    var sides: Int
    
    //Initializer that sets the number of sides
    init(sides: Int) {
        self.sides = sides
    }
    
    //Function to roll the die and return a random integer value in the range from 1 to the number of sides the die has
    func roll() -> Int {
        //arc4random_uniform takes an upper bound value, which we set as our number of sides (converted to a UInt32, a type of integer). Because the random number generated will be in the range 0 to 1 less than the number of sides passed in, so we add 1 to give us the proper range of values as a result (in the case of a six sided die, the range of results should be 1-6). We convert the result to an integer and return it
        let result = arc4random_uniform(UInt32(sides)) + 1
        return Int(result)
    }
}
