# KimHyunji💘

[GitHub에 iOS 프로젝트를 올리기 전에 꼭❗️ 해야하는 설정]()

## navigation 활용 화면이동

navigation은 stack처럼 뷰가 계속 쌓이는 것. (대표적인 예는 아이폰 설정)

* Storyboard로 설정
  ![스크린샷 2020-04-24 오후 6.31.35](/Users/hyunji/Desktop/스크린샷 2020-04-24 오후 6.31.35.png)

  버튼을 control을 누르면서 다음 뷰 컨트롤러로 드래그하면 위와 같이 된다.
  우리는 push를 할거니까 push 선택해주면 된다.

* 코드로 설정

  ```swift
  self.navigationController?.pushViewController(firstViewController, animated: true)
  ```

* 실행 화면
  ![Navigator_gif](/Users/hyunji/Desktop/Navigator_gif.gif)

## 로그인 화면 구현

