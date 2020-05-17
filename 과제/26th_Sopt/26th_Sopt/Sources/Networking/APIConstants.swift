//
//  APIConstants.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/16.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

struct APIConstants {
    static let baseURL = "13.209.144.115:3333"
    static let signinURL = APIConstants.baseURL + "/user/signin"
    static let signupURL = APIConstants.baseURL + "/user/signup"
}
