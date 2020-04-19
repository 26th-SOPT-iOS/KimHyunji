//
//  LoginViewController.swift
//  26th_iOS_Project
//
//  Created by 김현지 on 2020/04/19.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var finalIdTextField: UITextField!
    @IBOutlet var finalPwTextField: UITextField!
    @IBOutlet var logoutButton: UIButton!
    
    var idText: String?
    var pwText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTextField()
        
    }
    
    private func setTextField() {
        guard let idText = self.idText else { return }
        guard let pwText = self.pwText else { return }
        
        finalIdTextField.text = idText
        finalPwTextField.text = pwText
        
    }
    
    @IBAction func LogoutAction(_ sender: UIButton) {
        
        let navigationController = self.presentingViewController as? UINavigationController

        self.dismiss(animated: true) {
          let _ = navigationController?.popToRootViewController(animated: true)
        }
        
    }
    
}
