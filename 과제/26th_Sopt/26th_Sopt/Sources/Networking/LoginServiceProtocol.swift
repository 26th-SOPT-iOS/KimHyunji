//
//  LoginServiceProtocol.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/19.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

protocol LoginServiceProtocol {
    func requestSignUp(data: SignupData, completion: @escaping (NetworkResult<HTTPStatus>) -> Void)
}
