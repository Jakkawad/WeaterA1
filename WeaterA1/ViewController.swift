//
//  ViewController.swift
//  WeaterA1
//
//  Created by admin on 9/23/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lblCureentTemp: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    @IBOutlet weak var imageViewCurrenWeather: UIImageView!
    @IBOutlet weak var lblCurrentWeatherType: UILabel!
    
    @IBOutlet weak var tableView: UITableView!
    
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
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

