## 로그인 화면 구현

* 뷰 컨트롤러 간 값 전달하기
  FirstViewController.swift (값을 입력받을 뷰)

  ```swift
      @IBAction func LoginAction(_ sender: UIButton) {
          guard let loginViewController = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else { return }
          
          loginViewController.idText = idTextField.text
          loginViewController.pwText = pwTextField.text
          
          loginViewController.modalPresentationStyle = .fullScreen
          
          self.present(loginViewController, animated: true, completion: nil)
      }
  ```


  LoginViewController.swift (값을 전의 뷰컨에서 받아올 뷰)

  ```swift
      var idText: String?
      var pwText: String?
  
      private func setTextField() {
          guard let idText = self.idText else { return }
          guard let pwText = self.pwText else { return }
          
          finalIdTextField.text = idText
          finalPwTextField.text = pwText
          
      }
  ```


  

* 마지막 뷰에서 처음 뷰로 한번에 dismiss
  LoginViewController.swift

  ```swift
      @IBAction func LogoutAction(_ sender: UIButton) {
          
          let navigationController = self.presentingViewController as? UINavigationController
  
          self.dismiss(animated: true) {
            let _ = navigationController?.popToRootViewController(animated: true)
          }
          
      }
  ```



* 결과 Gif

  ![1차_로그인뷰](https://user-images.githubusercontent.com/49138331/80957629-83e28b00-8e3e-11ea-8aec-6758df8d62fe.gif)