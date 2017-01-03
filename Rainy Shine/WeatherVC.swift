//
//  ViewController.swift
//  Rainy Shine
//
//  Created by Ron Ramirez on 12/27/16.
//  Copyright © 2016 Mochi Apps. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var currentWeatherIconImage: UIImageView!
    @IBOutlet weak var currentWeatherLabel: UILabel!
    
    var currentWeather : CurrentWeather!
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        print(CURRENT_WEATHER_URL)
        
        currentWeather = CurrentWeather()
        currentWeather.downloadWeatherDetails {
            //Setup UI to load downloaded data
            self.updateMainUI()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: TableView Delegate Functions
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        return cell
    }
    
    //MARK: Helper Functions
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTempLabel.text = "\(currentWeather.currentTemp)"
        currentWeatherLabel.text = currentWeather.weatherType
        currentLocationLabel.text = currentWeather.cityName
        currentWeatherIconImage.image = UIImage(named: currentWeather.weatherType)
        
    }


}

