//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by 김현지 on 2020/05/09.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    static let identifier: String = "WeatherCell"
    
    @IBOutlet var weatherImgView: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setDateInformation(weatherImageName: String, date: String, subTitle: String) {
        weatherImgView.image = UIImage(named: weatherImageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }
    
}
