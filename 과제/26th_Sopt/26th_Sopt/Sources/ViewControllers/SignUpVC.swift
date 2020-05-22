//
//  SignUpVC.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/04/27.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {

    @IBOutlet var loginButton: UIButton!
    @IBOutlet var roundViews: [UIView]!
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var emailTF: UITextField!
    @IBOutlet var idTF: UITextField!
    @IBOutlet var phoneTF: UITextField!
    @IBOutlet var pwTF: UITextField!
    
    var service: LoginServiceProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customNavigationBar()

        for view in roundViews {
            view.layer.cornerRadius = view.frame.height / 2
        }
        
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
        
        let idValue = self.idTF.text
        let pwValue = self.pwTF.text
        let nameValue = self.nameTF.text
        let emailValue = self.emailTF.text
        let phoneValue = self.phoneTF.text
        
        service = LoginService()
        
//        guard let service = service else {
//            print("왜")
//            return
//        }
        
        let form = SignupData(id: idValue, pw: pwValue, name: nameValue, email: emailValue, phone: phoneValue)
        service?.requestSignUp(data: form) { result in
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
