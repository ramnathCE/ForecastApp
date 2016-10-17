//
//  ViewController.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 15/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var betterForecastButton: UIButton!

    @IBOutlet weak var tempForecastButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func temporaryForecastButtonPressed() {
        let vc = ForecastTemporaryTableViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        self.present(navigationController, animated: true, completion: nil)
        
//        var vc = self.storyboard?.instantiateViewController(withIdentifier: "better") as! ForecastTemporaryTableViewController
//        var navigationController = UINavigationController(rootViewController: vc)
//        self.present(navigationController, animated: true, completion: nil)
    }
    
    @IBAction func betterForecastButtonPressed() {
        let vc = ForecastTableViewController()
        let navigationController = UINavigationController(rootViewController: vc)
        self.present(navigationController, animated: true, completion: nil)
        
//        var vc = self.storyboard?.instantiateViewController(withIdentifier: "temp") as! ForecastTableViewController
//        var navigationController = UINavigationController(rootViewController: vc)
//        self.present(navigationController, animated: true, completion: nil)
    }


}

