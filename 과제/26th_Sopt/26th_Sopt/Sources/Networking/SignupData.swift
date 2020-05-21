//
//  SignupData.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/19.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

struct SignupData {
    var id: String?
    var pw: String?
    var name: String?
    var email: String?
    var phone: String?
    
    init(id: String?, pw: String?, name: String?, email: String?, phone: String?) {
        self.id = id
        self.pw = pw
        self.name = name
        self.email = email
        self.phone = phone
    }
}
