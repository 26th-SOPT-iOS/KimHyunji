//
//  ResultViewController.swift
//  26th_iOS_First
//
//  Created by 김현지 on 2020/04/18.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var switchLabel: UILabel!
    @IBOutlet var sliderLabel: UILabel!
    
    var name: String?
    var email: String?
    var isOnOff: Bool?
    var frequency: Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setLabels()
    }
    
    private func setLabels() {
        // Optional Binding
        guard let name = self.name else { return }
        guard let email = self.email else { return }
        guard let isOnOff = self.isOnOff else { return }
        guard let frequency = self.frequency else { return }
        
        // Label에 값 대입
        nameLabel.text = name
        emailLabel.text = email
        switchLabel.text = isOnOff ? "On" : "Off"
        sliderLabel.text = "\(frequency)"
    }
    
    @IBAction func dismissView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
