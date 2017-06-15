//
//  Concert.swift
//  Concert Lister
//
//  Created by Ryan Brashear on 6/15/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//This class stores information about concerts
class Concert {
    //This parameter corresponds to the title of the Concert
    var title: String
    
    //This is an initializer for the Concert class that takes a title as input, and sets the title parameter with the input value
    init(title: String) {
        self.title = title
    }
}
