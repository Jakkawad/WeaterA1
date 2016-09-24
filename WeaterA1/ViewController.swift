//
//  ViewController.swift
//  WeaterA1
//
//  Created by admin on 9/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentWeather:CurrentWeather!
    var forecast:Forecast!
    var forecasts = [Forecast]()
    
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblCureentTemp: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imageViewCurrenWeather: UIImageView!
    @IBOutlet weak var lblCurrentWeatherType: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
    func downloadForcastDate(completed:@escaping DownloadComplete) {
        //Downloading forecast weather data for TableView
        let forecastURL = URL(string: FORECAST_URL)!
        Alamofire.request(forecastURL).responseJSON { response in
            let result = response.result
            if let dict = result.value as? Dictionary<String, AnyObject> {
                if let list = dict["list"] as? [Dictionary<String, AnyObject>] {
                    for obj in list {
                        let forecast = Forecast(weatherDict: obj)
                        self.forecasts.append(forecast)
                        print("OBJ = \(obj)")
                    }
                    self.forecasts.remove(at: 0)
                    self.tableView.reloadData()
                }
            }
            completed()
        }
    }
    
    func updateMainUI() {
        lblDate.text = currentWeather.date
        print("CurrentWeather = \(currentWeather.date)")
        lblCureentTemp.text = "\(currentWeather.currentTemp)"
        print("CurrentWeather Temp = \(currentWeather.currentTemp)")
        lblCurrentWeatherType.text = currentWeather.weatherType
        lblLocation.text = currentWeather.cityName
        imageViewCurrenWeather.image = UIImage(named: currentWeather.weatherType)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return forecasts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0") as? WeatherTableViewCell
        let forecast = forecasts[indexPath.row]
        cell0?.configureCell(forecast: forecast)
        return cell0!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        forecast = Forecast()
        
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            //Setup UI to load downloaded data
            self.downloadForcastDate {
                self.updateMainUI()
            }
//            self.updateMainUI()
        }
//        print("URL \(CURRENT_WEATHER_URL)")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

