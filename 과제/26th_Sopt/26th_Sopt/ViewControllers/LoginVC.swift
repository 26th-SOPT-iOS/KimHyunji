//
//  LoginVC.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/04/27.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet var emailView: UIView!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var signUpLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailView.layer.cornerRadius = emailView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        guard let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC else { return }
        
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    

}
