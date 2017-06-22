//
//  Converting.swift
//  Converting
//
//  Created by Ryan Brashear on 6/22/17.
//  Copyright © 2017 Ryan Brashear. All rights reserved.
//

import Foundation

//Protocol that Converters conform to, containing a convert function that takes an integer value as input
protocol Converting {
    func convert(value: Int)
}
