## Zeplin & 도전과제 애니메이션

### Zeplin

* 뷰 둥글게 만들기

  LoginVC.swift

  ```swift
      @IBOutlet var emailView: UIView!
      @IBOutlet var passwordView: UIView!
      @IBOutlet var loginButton: UIButton!
  
      override func viewDidLoad() {
          super.viewDidLoad()
  
          emailView.layer.cornerRadius = emailView.frame.height / 2
          passwordView.layer.cornerRadius = passwordView.frame.height / 2
          loginButton.layer.cornerRadius = loginButton.frame.height / 2
      }
  ```

  cornerRadius 속성을 이용해준다 ! 😆



* 회원가입 하기 부분!

  '아직 회원이 아니신가요?' 와 '<u>회원가입 하기</u>' 의 라벨을 구분했다.
  그리고 '<u>회원가입 하기</u>' 라벨에 투명 버튼을 오토레이아웃을 잡아서 IBAction 처리를 해줬다.

  * 오토레이아웃

    <img width="769" alt="image" src="https://user-images.githubusercontent.com/49138331/80960495-f43fdb00-8e43-11ea-907d-558317f5a58e.png">

  

  * IBAction

    LoginVC.swift

    ```swift
        @IBAction func signUpAction(_ sender: UIButton) {
            guard let signUpVC = self.storyboard?.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC else { return }
            
            self.navigationController?.pushViewController(signUpVC, animated: true)
        }
    ```

  

* Scroll View의 뷰 계층

  <img width="629" alt="image" src="https://user-images.githubusercontent.com/49138331/80960768-75976d80-8e44-11ea-8935-b284a7b37c13.png">

  스크롤뷰 설정 후, 세로 vertical stack에 네 개의 이미지를 넣고 그것을 하나 더 만든다.
  그 후 horizontal stack에 만들어놓은 vertical stack 두 개를 넣어 오토 레이아웃을 잡았다.
  ~~(이미지와 오토레이아웃 처리되어있는 라벨들은 귀찮아서 하나만.. 적용했다..)~~



* 💫도전과제💫


  ListVC.swift

  ```swift
      @IBOutlet var scrollView: UIScrollView!
      @IBOutlet var headerViewHeight: NSLayoutConstraint!
      @IBOutlet var headerImage: UIImageView!
      @IBOutlet var contentView: UIView!
  
      let scrollTopEdgeInsets: CGFloat = 210
  ```

  애니메이션에 필요한 프로퍼티들을 IBOutlet으로 선언해준다.
  

  ```swift
      override func viewDidLoad() {
          super.viewDidLoad()
          
          scrollView.delegate = self
          scrollView.contentInsetAdjustmentBehavior = .never
        
      }
  ```

  스크롤뷰 delegate를 self로 설정해준다.

  contentInsetAdjustmentBehavior은 스크롤이 될 때 스크롤 뷰에 대한 설정이다.
  이것에 대한 자세한 내용은 [여기](https://zeddios.tistory.com/809)


  마지막으로 스크롤이 될 때 애니메이션 설정을 해준다.

  ```swift
      func scrollViewDidScroll(_ scrollView: UIScrollView) {
          let yPosition = scrollView.contentOffset.y
          
          if yPosition < 0 {
              headerViewHeight.constant = scrollTopEdgeInsets - yPosition
          } else {
              print(scrollTopEdgeInsets - yPosition)
              if scrollTopEdgeInsets - yPosition > 105 {
                  headerViewHeight.constant = scrollTopEdgeInsets - yPosition
              } else {
                  headerViewHeight.constant = 105
                  
              }
          }
      }
  ```

  yPosition이 음수, 즉 위로 스크롤을 하는 경우는 헤더 뷰의 height을 올려주고, 
  아래로 스크롤을 하는 경우는 헤더 뷰의 height를 적당히 줄여서 고정해준다.

  

  ‼️결과‼️
  
  ![2차세미나_도전과제](https://user-images.githubusercontent.com/49138331/80961078-200f9080-8e45-11ea-94af-759ce25e8e7f.gif)
