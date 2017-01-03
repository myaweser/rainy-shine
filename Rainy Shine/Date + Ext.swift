//
//  Date + Ext.swift
//  Rainy Shine
//
//  Created by Ron Ramirez on 1/3/17.
//  Copyright © 2017 Mochi Apps. All rights reserved.
//

import UIKit

extension Date {
    func dayOfTheWeek() -> String {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from : self)
    }
}
