//
//  SigninData.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/16.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

struct SigninData {
    var id: String?
    var pw: String?
    
    init(id: String?, pw: String?) {
        self.id = id
        self.pw = pw
    }
}
