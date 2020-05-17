//
//  NetworkResult.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/16.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

enum NetworkResult<T> {
    case success (T)
    case requestErr (T)
    case pathErr
    case serverErr
    case networkFail
}
