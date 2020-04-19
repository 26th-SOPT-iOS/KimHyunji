//
//  JoinViewController.swift
//  26th_iOS_Project
//
//  Created by 김현지 on 2020/04/19.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {

    @IBOutlet var idTextField: UITextField!
    @IBOutlet var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func JoinAction(_ sender: UIButton) {
        guard let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
        
        loginViewController.idText = idTextField.text
        loginViewController.pwText = pwTextField.text
        
        loginViewController.modalPresentationStyle = .fullScreen
        
        self.present(loginViewController, animated: true, completion: nil)
    }
    

}
