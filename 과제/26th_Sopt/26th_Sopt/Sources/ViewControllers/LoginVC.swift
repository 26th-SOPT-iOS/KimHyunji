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
    
    var service: LoginServiceProtocol?
    
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
        
        print(inputID, inputPW)
        
        service = LoginService()
        
//
//        guard let service = service else {
//            print("왜")
//            return
//        }
        
        let form = SigninData(id: inputID, pw: inputPW)
        service?.requestSignIn(data: form) { result in
            print("request가 들어오긴 하니?")
            
            switch result {
            case .success(let httpCode):
                switch httpCode {
                case .existId:
                    print("이미존재")
                case .success:
                    print("성공")
                default:
                    print("no~~")
                }
            default:
                print("err")
            }
        }
        
    }
    
}
