//
//  WeatherTableViewCell.swift
//  WeaterA1
//
//  Created by Jakkawad Chaiplee on 9/24/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {
    @IBOutlet weak var imageViewWeatherIcon: UIImageView!
    @IBOutlet weak var lblDay: UILabel!
    @IBOutlet weak var lblWeatherType: UILabel!
    @IBOutlet weak var lblHighTemp: UILabel!
    @IBOutlet weak var lblLowTemp: UILabel!

    func configureCell(forecast: Forecast) {
        lblLowTemp.text = "\(forecast.lowTemp)"
        lblHighTemp.text = "\(forecast.highTemp)"
        lblWeatherType.text = forecast.weatherType
        lblDay.text = forecast.date
        imageViewWeatherIcon.image = UIImage(named: forecast.weatherType)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
