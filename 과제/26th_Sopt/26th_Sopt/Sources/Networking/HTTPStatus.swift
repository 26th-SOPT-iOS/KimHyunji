//
//  HTTPStatus.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/20.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

enum HTTPStatus: Int {
    case success = 204
    case existId = 200
    case failure = 404
    case serverErr = 500
}
