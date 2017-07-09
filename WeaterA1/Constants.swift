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

//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-36\(LONGTITUDE)123\(APP_ID)\(API_KEY)"
//let CURRENT_WEATHER_URL2 = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"
//let CURRENT_WEATHER_URL = "http://api/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=e2a64bd21946ae80c2e6f7f235c27490"
let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=e2a64bd21946ae80c2e6f7f235c27490"
//http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b1b15e88fa797225412429c1c50c122a1
//http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=e2a64bd21946ae80c2e6f7f235c27490
//"http://samples.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=e2a64bd21946ae80c2e6f7f235c27490"
//http://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=e2a64bd21946ae80c2e6f7f235c27490
//http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=e2a64bd21946ae80c2e6f7f235c27490
//e2a64bd21946ae80c2e6f7f235c27490
//748b6a95106e195ef88ebd2d26aefb1a
//13.7732834
//100.5717291
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=e2a64bd21946ae80c2e6f7f235c27490"


//"http://api.openweathermap.org/data/2.5/forecast/daily?lat=-36&lon=123&cnt=108&mode=json&appid=748b6a95106e195ef88ebd2d26aefb1a"
//let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"


//http://api.openweathermap.org/data/2.5/weather?lat35&lon139&APPID=748b6a95106e195ef88ebd2d26aefb1a

//http://api.openweathermap.org/data/2.5/weather?lat=lon=&appid=748b6a95106e195ef88ebd2d26aefb1a

//"http://api.openweathermap.org/data/2.5/weather?lat=13.7732834&lon=100.5717291&appid=e2a64bd21946ae80c2e6f7f235c27490"
