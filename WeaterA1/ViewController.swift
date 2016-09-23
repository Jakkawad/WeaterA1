//
//  ViewController.swift
//  WeaterA1
//
//  Created by admin on 9/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentWeather:CurrentWeather!
    
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblCureentTemp: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imageViewCurrenWeather: UIImageView!
    @IBOutlet weak var lblCurrentWeatherType: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
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
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell0 = tableView.dequeueReusableCell(withIdentifier: "tableCell0")
        return cell0!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            //Setup UI to load downloaded data
            self.updateMainUI()
        }
//        print("URL \(CURRENT_WEATHER_URL)")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

