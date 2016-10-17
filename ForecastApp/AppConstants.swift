//
//  AppConstants.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 16/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

struct AppConstants {
    
    // API URL Constants
    static let kForeCastFiveDayWeatherAPIURL = "http://api.openweathermap.org/data/2.5/forecast?q=London,GB&mode=json&appid=d954d1a2bef3cac3d897b803a4cf818b"
    static let kWeatherIconBaseURL = "http://openweathermap.org/img/w/"
    
    
    static let kNotificationReloadTable = Notification.Name("RELOAD_TABLE_DATA")
    
}
