//
//  WeatherCell.swift
//  Rainy Shine
//
//  Created by Ron Ramirez on 1/3/17.
//  Copyright © 2017 Mochi Apps. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var weatherTypeLabel: UILabel!
    @IBOutlet weak var highTempLabel: UILabel!
    @IBOutlet weak var lowTempLabel: UILabel!
    
    func configureCell(forecast : Forecast) {
        lowTempLabel.text = forecast.lowTemp
        highTempLabel.text = forecast.highTemp
        weatherTypeLabel.text = forecast.weatherType
        dayLabel.text = forecast.date
        weatherIcon.image = UIImage(named : forecast.weatherType)
        
    }
}
