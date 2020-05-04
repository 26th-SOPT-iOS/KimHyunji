# KimHyunji💘

[GitHub에 iOS 프로젝트를 올리기 전에 꼭❗️ 해야하는 설정](https://github.com/26th-SOPT-iOS/KimHyunji/blob/master/Github_README.md)

## 1차 과제

### Navigation을 활용한 화면 이동

navigation은 stack처럼 뷰가 계속 쌓이는 것. (대표적인 예는 아이폰 설정)

* Storyboard로 설정
  

  ![스크린샷 2020-04-24 오후 6.31.35](https://user-images.githubusercontent.com/49138331/80204327-a4069300-8663-11ea-8748-1efe4b32e058.png)
  

  버튼을 control을 누르면서 다음 뷰 컨트롤러로 드래그하면 위와 같이 된다.
  우리는 push를 할거니까 push 선택해주면 된다.
  
* 코드로 설정

  ```swift
  self.navigationController?.pushViewController(firstViewController, animated: true)
  ```

  

* 실행 화면
  
  
  
  ![Navigator_gif](https://user-images.githubusercontent.com/49138331/80204587-1e371780-8664-11ea-911c-2f6f31ed06a5.gif)



### 로그인 화면 구현

[자세한 내용 README](https://github.com/26th-SOPT-iOS/KimHyunji/blob/master/1st_LoginView.md)

![1차_로그인뷰](https://user-images.githubusercontent.com/49138331/80957629-83e28b00-8e3e-11ea-8aec-6758df8d62fe.gif)



## 2차 과제

### Zeplin & 도전과제 애니메이션

자세한 내용 README