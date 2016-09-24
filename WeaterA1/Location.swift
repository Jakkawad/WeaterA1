//
//  Location.swift
//  WeaterA1
//
//  Created by Jakkawad Chaiplee on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() { }
    
    var latitude:Double!
    var longitude:Double!
}
