//
//  Character.swift
//  Dungeons And Dragons Character Creator
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Data model class that represents a Dungeons and Dragons character. Each character has a value for strength, constitution, dexterity, intelligence, wisdom, and charisma that are used as their stats to perform actions within the game. These are each stored as an integer
class Character {
    var strength: Int
    var constitution: Int
    var dexterity: Int
    var intelligence: Int
    var wisdom: Int
    var charisma: Int
    
    //Initializer for the character class, that takes 6 integer values as input and assigns them to the appropriate values for the character stats
    init(strength: Int, constitution: Int, dexterity: Int, intelligence: Int, wisdom: Int, charisma: Int) {
        self.strength = strength
        self.constitution = constitution
        self.dexterity = dexterity
        self.intelligence = intelligence
        self.wisdom = wisdom
        self.charisma = charisma
    }
}
