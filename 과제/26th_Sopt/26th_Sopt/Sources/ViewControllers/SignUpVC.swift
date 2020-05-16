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
    

    

}
