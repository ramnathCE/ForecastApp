//
//  ForeCastTableViewCell.swift
//  ForecastApp
//
//  Created by Ramanath Suthakar on 15/10/2016.
//  Copyright © 2016 Ramnath Suthakar. All rights reserved.
//

import UIKit

class ForeCastTableViewCell: UITableViewCell {

    @IBOutlet weak var temperatureNameLabel: UILabel!
    @IBOutlet weak var temperatureTime: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var temperatureIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
