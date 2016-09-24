//
//  Constants.swift
//  WeaterA1
//
//  Created by Jakkawad Chaiplee on 9/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGTITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "748b6a95106e195ef88ebd2d26aefb1a"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)35\(LONGTITUDE)139\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"


//"http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=108&mode=json&appid=748b6a95106e195ef88ebd2d26aefb1a"
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"


//http://api.openweathermap.org/data/2.5/weather?lat35&lon139&APPID=748b6a95106e195ef88ebd2d26aefb1a

//http://api.openweathermap.org/data/2.5/weather?lat=lon=&appid=748b6a95106e195ef88ebd2d26aefb1a

//http://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=748b6a95106e195ef88ebd2d26aefb1a
