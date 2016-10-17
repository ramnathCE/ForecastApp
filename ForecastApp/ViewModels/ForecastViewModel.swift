//
//  ForecastViewModel.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 15/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class ForecastViewModel {
    
    var countryName : String
    var longitude : Double
    var latitude : Double
    var countryCode : String
    var statusCode : Int
    var responseMessage : String
    var temperatureInKelvin : Double
    var temperatureMinimumInKelvin : Double
    var temperatureMaximumInKelvin : Double
    var temperatureName : String
    var temperatureDescription : String
    var temperatureIcon : String
    var temperatureDate : String
    var temperatureDateString : String
    var temperatureTimeString : String
    
    init(countryName: String,
         longitude: Double,
         latitude: Double,
         countryCode : String,
         statusCode : Int,
         responseMessage : String,
         temperatureInKelvin : Double,
         temperatureMinimumInKelvin : Double,
         temperatureMaximumInKelvin : Double,
         temperatureName : String,
         temperatureDescription : String,
         temperatureIcon : String,
         temperatureDate : String,
         temperatureDateString: String,
         temperatureTimeString: String) {
        
        self.countryName = countryName
        self.longitude = longitude
        self.latitude = latitude
        self.countryCode = countryCode
        self.statusCode = statusCode
        self.responseMessage = responseMessage
        self.temperatureInKelvin = temperatureInKelvin
        self.temperatureMinimumInKelvin  = temperatureMinimumInKelvin
        self.temperatureMaximumInKelvin = temperatureMaximumInKelvin
        self.temperatureName = temperatureName
        self.temperatureDescription = temperatureDescription
        self.temperatureIcon = temperatureIcon
        self.temperatureDate = temperatureDate
        self.temperatureDateString = temperatureDateString
        self.temperatureTimeString = temperatureTimeString
    }
    
    init() {
        
        self.countryName = ""
        self.longitude = 0.0
        self.latitude = 0.0
        self.countryCode = ""
        self.statusCode = 0
        self.responseMessage = ""
        self.temperatureInKelvin = 0.0
        self.temperatureMinimumInKelvin  = 0.0
        self.temperatureMaximumInKelvin = 0.0
        self.temperatureName = ""
        self.temperatureDescription = ""
        self.temperatureIcon = ""
        self.temperatureDate = ""
        self.temperatureDateString = ""
        self.temperatureTimeString = ""
    }
    

}
