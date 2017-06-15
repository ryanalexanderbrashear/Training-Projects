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
        return 0
    }
}
