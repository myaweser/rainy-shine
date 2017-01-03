//
//  Constants.swift
//  Rainy Shine
//
//  Created by Ron Ramirez on 1/2/17.
//  Copyright © 2017 Mochi Apps. All rights reserved.
//

import Foundation



let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "5125027ae3508c7cb4b67db2f80e473a"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)35\(LONGITUDE)139\(APP_ID)\(API_KEY)"

