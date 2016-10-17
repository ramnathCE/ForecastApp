//
//  GlobalSingleton.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 16/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class GlobalSingleton {
    
    //MARK: Shared Instance
    
    static let sharedInstance : GlobalSingleton = {
        let instance = GlobalSingleton()
        return instance
    }()
    
    //MARK: Local Variable
    
    var listOfForecastObject : [ForecastViewModel] = []
    
    //MARK: Init
    
    convenience init() {
        self.init(array : [])
    }
    
    //MARK: Init Array
    
    init( array : [ForecastViewModel]) {
        listOfForecastObject = array
    }
}
