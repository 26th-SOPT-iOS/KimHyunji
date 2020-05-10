//
//  DetailViewController.swift
//  WeatherApp
//
//  Created by 김현지 on 2020/05/09.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var weatherImgView: UIImageView!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    
    var imageName: String = ""
    var date: String = ""
    var subTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initView()
    }
    

    private func initView() {
        weatherImgView.image = UIImage(named: imageName)
        dateLabel.text = date
        subTitleLabel.text = subTitle
    }

}
