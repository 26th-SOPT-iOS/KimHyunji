//
//  SignUpVC.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/04/27.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var nameView: UIView!
    @IBOutlet var emailView: UIView!
    @IBOutlet var passwordView: UIView!
    @IBOutlet var loginButton: UIButton!
    
    var service: LoginServiceProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customNavigationBar()

        nameView.layer.cornerRadius = nameView.frame.height / 2
        emailView.layer.cornerRadius = emailView.frame.height / 2
        passwordView.layer.cornerRadius = passwordView.frame.height / 2
        loginButton.layer.cornerRadius = loginButton.frame.height / 2
    }
    
    func customNavigationBar() {
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backItem?.title = ""
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @IBAction func signUpClick(_ sender: Any) {
        guard let service = service else {
            return
        }
        let form = SignupData(id: "hyunjiiiiii", pw: "pw", name: "hyunjiiiiii", email: "email", phone: "phone")
        service.requestSignUp(data: form) { result in
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
