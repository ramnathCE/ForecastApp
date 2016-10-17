//
//  DateExtension.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 16/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

extension UILabel
{
    func dateStringToDate(dateString: String)
    {
        //Create Date Formatter
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US")
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        
        //Specify Format of String to Parse
        //dateFormatter.dateFormat = "dd-MM-yyyy"
        
        //Parse into NSDate
        let dateFromString = dateFormatter.date(from: dateString)
        //var date: NSDate? = dateFormatter.dateFromString(dateString)
        
        //Return Parsed Date
        self.text = dateFormatter.string(from: dateFromString!)
    }
    
//    func dateStringToTimeOnly() -> String
//    {
//        //Create Date Formatter
//        let dateFormatter = DateFormatter()
//        
//        //Specify Format of String to Parse
//        dateFormatter.dateFormat = "yyyy-MM-dd hh:mm:ss"
//        
//        //Parse into NSDate
//        let dateFromString = dateFormatter.date(from: self)
//        
//        //Return Parsed Date
//        return dateFormatter.string(from: dateFromString!)
//    }
}
