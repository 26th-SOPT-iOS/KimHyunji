//
//  StartViewController.swift
//  26th_iOS_First
//
//  Created by 김현지 on 2020/04/18.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var sampleSwitch: UISwitch!
    @IBOutlet var sampleSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func transferData(_ sender: UIButton) {
        guard let resultVC = self.storyboard?.instantiateViewController(identifier: "ResultViewController") as? ResultViewController else { return }
        
        resultVC.name = nameTextField.text
        resultVC.email = emailTextField.text
        resultVC.isOnOff = sampleSwitch.isOn
        resultVC.frequency = sampleSlider.value
        
        self.present(resultVC, animated: true, completion: nil)
    }
    

}
