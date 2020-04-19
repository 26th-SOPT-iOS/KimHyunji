//
//  FirstViewController.swift
//  26th_iOS_Project
//
//  Created by 김현지 on 2020/04/19.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet var idTextField: UITextField!
    @IBOutlet var pwTextField: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var joinButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loginButton.layer.cornerRadius = 10
        joinButton.layer.cornerRadius = 10
        
    }
    
    @IBAction func LoginAction(_ sender: UIButton) {
        guard let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
        
        loginViewController.idText = idTextField.text
        loginViewController.pwText = pwTextField.text
        
        loginViewController.modalPresentationStyle = .fullScreen
        
        self.present(loginViewController, animated: true, completion: nil)
    }
    
}
