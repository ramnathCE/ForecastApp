//
//  ForecastTemporaryTableViewController.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 16/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class ForecastTemporaryTableViewController: UITableViewController {

    @IBOutlet var foreCastTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        // Register to receive notification
        NotificationCenter.default.addObserver(self, selector: #selector(reloadTheTable), name: AppConstants.kNotificationReloadTable, object: nil)
        
        ForecastService.getForeCastWeatherList()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return GlobalSingleton.sharedInstance.listOfForecastObject.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "forecastcelltemp", for: indexPath) as! ForeCastTableViewCell
        
        let listWeather = GlobalSingleton.sharedInstance.listOfForecastObject[indexPath.row]
    
        cell.dateLabel.text = listWeather.temperatureDateString
        
       cell.temperatureLabel.text = String(format: "%i%@", Int(TemperatureCalculator.temperatureKelvinToCelsius(kelvin: listWeather.temperatureInKelvin)), " C")
        cell.temperatureIcon.downloadedFrom(link: String(format: "%@%@%@", AppConstants.kWeatherIconBaseURL, listWeather.temperatureIcon, ".png"))
        cell.temperatureTime.text = listWeather.temperatureTimeString
        cell.temperatureNameLabel.text = listWeather.temperatureName
        return cell
    }
    
    func reloadTheTable() {
        foreCastTableView.reloadData()
    }
}
