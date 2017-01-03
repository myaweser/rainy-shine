//
//  Location.swift
//  Rainy Shine
//
//  Created by Ron Ramirez on 1/3/17.
//  Copyright © 2017 Mochi Apps. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init () {}
    
    var latitude : Double!
    var longitude : Double!
}


