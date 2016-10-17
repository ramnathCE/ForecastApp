//
//  TemperatureCalculator.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 16/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class TemperatureCalculator {
    
    class func temperatureKelvinToCelsius(kelvin: Double) -> Double {
        let celsiusTemp = kelvin - 273.15
        return celsiusTemp
    }

}
