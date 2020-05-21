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
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let service: LoginServiceProtocol = LoginService()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailView.layer.cornerRadius = emailView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
    }
    
    @IBAction func signUpAction(_ sender: UIButton) {
        guard let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC else { return }
        signUpVC.service = service
        self.navigationController?.pushViewController(signUpVC, animated: true)
    }
    
    @IBAction func doLogin(_ sender: Any) {
        guard let inputID = emailTextField.text else { return }
        guard let inputPW = passwordTextField.text else { return }
        
//        LoginService.shared.login(id: inputID, pwd: inputPW) { networkResult in
//            switch networkResult{
//            case .success(let token):
//                guard let token = token as? String else { return }
//                UserDefaults.standard.set(token, forKey: "token")
//                guard let tabbarController = self.storyboard?.instantiateViewController(identifier: "") else { return <#return value#> }
//            }
//        }
    }
    
}
