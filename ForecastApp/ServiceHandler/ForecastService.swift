//
//  ForecastService.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 15/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit
import Alamofire

class ForecastService {
    
    class func getForeCastWeatherList() -> Void {
        
        var listOfForecastObject : [ForecastViewModel] = []
        
        Alamofire.request(AppConstants.kForeCastFiveDayWeatherAPIURL).responseJSON { response in
            
            if let JSON = response.result.value as? [String: AnyObject] {
                // City
                let JSON_City = JSON["city"] as! [String: AnyObject]
                print("JSON-City: \(JSON_City)")
                
                // List
                let JSON_List = JSON["list"] as! NSArray
                
                for i in 0 ..< JSON_List.count {
                    
                    let objectForecast = ForecastViewModel.init()
                    var JSON_List_interator = JSON_List[i] as! [String: AnyObject]
                    
                    objectForecast.temperatureInKelvin = (JSON_List_interator["main"]?["temp"]! as! Double)
                    objectForecast.temperatureMinimumInKelvin = (JSON_List_interator["main"]?["temp_min"]! as! Double)
                    objectForecast.temperatureMaximumInKelvin = (JSON_List_interator["main"]?["temp_max"]! as! Double)
                    
                    // Addtional Layer
                    let JSON_List_interator_weather = JSON_List_interator["weather"] as! NSArray
                    
                    objectForecast.temperatureName = (JSON_List_interator_weather[0] as? [String: AnyObject])?["main"]! as! String
                    objectForecast.temperatureDescription = (JSON_List_interator_weather[0] as? [String: AnyObject])?["description"]! as! String
                    objectForecast.temperatureIcon = (JSON_List_interator_weather[0] as? [String: AnyObject])?["icon"]! as! String
                    objectForecast.temperatureDate = JSON_List_interator["dt_txt"] as! String
                    
                    let dateTimeArr = objectForecast.temperatureDate.components(separatedBy: " ")
                    
                    objectForecast.temperatureDateString = dateTimeArr[0]
                    objectForecast.temperatureTimeString = dateTimeArr[1]
                    
                    listOfForecastObject.append(objectForecast)
                
                }
                
                print("Total Array: \(listOfForecastObject.count)")
                print("First Array Temp Name: \((listOfForecastObject[4]).temperatureName)")
                
                GlobalSingleton.sharedInstance.listOfForecastObject = listOfForecastObject
                NotificationCenter.default.post(name: AppConstants.kNotificationReloadTable, object: nil)
                
            }
        }
        
        //return listOfForecastObject
        
    }
    
}
