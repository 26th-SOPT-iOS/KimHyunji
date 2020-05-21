//
//  LoginService.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/05/16.
//  Copyright © 2020 김현지. All rights reserved.
//

import Foundation

class LoginService: LoginServiceProtocol {
    func requestSignUp(data: SignupData, completion: @escaping (NetworkResult<HTTPStatus>) -> Void) {
        
        guard let url: URL = URL(string: APIConstants.signupURL) else { return }
        
        var request: URLRequest = URLRequest(url: url)
        
        let headers = [
            "Content-Type": "application/json"
        ]
        
        for (key, value) in headers {
            request.setValue(value, forHTTPHeaderField: key)
        }
        
        let body = [
            "id": data.id,
            "password": data.pw,
            "name": data.name,
            "email": data.email,
            "phone": data.phone
        ]
        
        guard let encodeData = try? JSONSerialization.data(withJSONObject: body) else {
            return
        }
        
        request.httpBody = encodeData
        request.httpMethod = "POST"
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            print("response")
            if error != nil {
                print(error)
                completion(.networkFail)
                return
            }
        
            guard let data = data else {
                print("data err")
                completion(.networkFail)
                return
            }
            
            let decoder = JSONDecoder()
            
            guard let model = try? decoder.decode(SigninData<TokenData>.self, from: data),
                let httpCode = HTTPStatus(rawValue: model.status) else {
                    print("http,decode err")
                    completion(.networkFail)
                    return
            }
            
            completion(.success(httpCode))
            
        }.resume()
    }
}
