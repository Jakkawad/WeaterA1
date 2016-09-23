//
//  CurrentWeather.swift
//  WeaterA1
//
//  Created by Jakkawad Chaiplee on 9/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation
import Alamofire

class CurrentWeather {
    var _cityName:String!
    var _date:String!
    var _weatherType:String!
    var _currentTemp:Double!
//    var _highTemp:String!
    
    var cityName:String {
        if _cityName == nil {
            _cityName = ""
        }
        return _cityName
    }
    
    var date:String {
        if _date == nil {
            _date = ""
        }
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        let currentDate = dateFormatter.string(from: Date())
        self._date = "Today, \(currentDate)"
        return _date
    }
    
    var weatherType:String {
        if _weatherType == nil {
            _weatherType = ""
        }
        return _weatherType
    }
    
    var currentTemp:Double {
        if _currentTemp == nil {
            _currentTemp = 0.0
        }
        return _currentTemp
    }
    
    func downloadWeatherDetails(completed: DownloadComplete) {
        //Alamofire download
        let currentWeatherURL = URL(string: CURRENT_WEATHER_URL)!
        Alamofire.request(currentWeatherURL).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
                if let dict = response.result.value as? Dictionary<String, AnyObject> {
                    if let name = dict["name"] as? String {
                        self._cityName = name.capitalized
                        print("Cityname = \(self._cityName)")
                    }
                    
                    if let weather = dict["weather"] as? [Dictionary<String, AnyObject>] {
                        if let main = weather[0]["main"] as? String {
                            self._weatherType = main.capitalized
                            print("WeatherType = \(self._weatherType)")
                            
                        }
                    }
                    
                    if let main = dict["main"] as? Dictionary<String, AnyObject> {
                        if let currentTemperature = main["temp"] as? Double {
                            let kelvinToFarenheitPreDivision = (currentTemperature * (9/5) - 459.67)
                            let  kelvinToFarenheit = Double(round(10 * kelvinToFarenheitPreDivision/10))
                            self._currentTemp = kelvinToFarenheit
                            print("CurrentTemp = \(self._currentTemp)")
                        }
                    }
                    
                }
                
            }
            
        }
        completed()
    }
    
}