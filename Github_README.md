## GitHub에 iOS 프로젝트를 올리기 전에 꼭❗️ 해야하는 설정

앱잼을 시작하시면 다들 알게 될 사실이지만..!
iOS 개발을 협업을 하면서 진행할 때, 프로젝트를 올리기 전에 꼭 .gitignore라는 파일을 올려야 합니다.
~~.gitignore 설정을 하지 않았다면? merge(협업자와 코드를 합치는 것) 시에 엄청난 conflict를 겪게 될 것이기 때문에..~~



왜 꼭 .gitignore을 올려야할까요?
.gitignore라는 파일은 iOS 프로젝트 중에서 conflict가 일어날 가능성이 있는 파일들의 추적을 안하도록 설정해주는 파일입니다! (ignore라는 뜻 그대로 무시한다고 생각하면 될 것 같아요.)
그래서 협업 시에 미리 .gitignore 설정을 하고 프로젝트를 올려서 merge를 하게 된다면 까다로운 conflict를 피할 가능성이 올라가서 필수로 설정해주어야 합니다.



그럼 gitignore 설정은 어떻게 해요?
터미널에서 설정하는 방법을 알려드릴께요 !
![스크린샷 2020-04-24 오후 6.49.03](https://user-images.githubusercontent.com/49138331/80203464-2b530700-8662-11ea-9b35-2dc878f7fc0f.png)우선 터미널에서 iOS 프로젝트를 올릴 레포지토리 경로로 이동해주세요!

![스크린샷 2020-04-24 오후 6.50.55](https://user-images.githubusercontent.com/49138331/80203488-3148e800-8662-11ea-8051-4b11b9d3f68c.png)

우선 ls -al이라는 터미널 명령어를 작성하시면 여러분들은 아직 .gitignore이라는 파일이 없을거에요.
만들어주지 않았으니까요!
~~저는 이미 iOS 프로젝트를 올리고 있어서 .gitignore 파일이 있습니다.~~
그래서 .gitignore라는 파일이 없는 프로젝트에서 생성하는 것을 알려드릴께요!

![스크린샷 2020-04-24 오후 6.54.27](https://user-images.githubusercontent.com/49138331/80203490-3312ab80-8662-11ea-9162-a4c7d84bf311.png)

.gitignore 파일이 없는 프로젝트에서 touch .gitignore 라는 명령어를 사용하면 .gitignore 파일이 생성됩니다.
근데 .gitignore 파일에 내용을 작성하기 위해서는 vi 명령어를 사용해야합니다.

![스크린샷 2020-04-24 오후 6.55.32](https://user-images.githubusercontent.com/49138331/80203494-34dc6f00-8662-11ea-8567-66ed169e498f.png)

이렇게 vi .girignore 명령어를 사용해서 파일 작성할 준비를 해볼께요.

![스크린샷 2020-04-24 오후 6.55.38](https://user-images.githubusercontent.com/49138331/80203504-373ec900-8662-11ea-8f27-f0fdf1ad701b.png)vi 명령어를 사용하면 위와 같은 화면이 뜰텐데요.
 i 키를 누르면 파일에 내용을 작성할 수 있는 상태로 됩니다.
우선, i키를 누른 상태에서 터미널은 조금 내비두고, http://gitignore.io 사이트에 들어가주세요!
이 사이트는 gitignore 파일에 작성할 내용을 검색할 수 있는 사이트입니다.

![스크린샷 2020-04-24 오후 7.03.54](https://user-images.githubusercontent.com/49138331/80203506-373ec900-8662-11ea-9201-ca8868590517.png)

우리 프로젝트 진행할 툴인 xcode, 아요 개발 언어인 swift, 그리고 라이브러리를 사용한다면 cocoapods까지 검색해서 생성 버튼을 눌러줍니다.
코코아팟에서 conflict가 나면 조금 까다로워서 꼭 추가해주는 것이 좋습니다!

![스크린샷 2020-04-24 오후 7.06.03](https://user-images.githubusercontent.com/49138331/80203511-3ad25000-8662-11ea-8c14-cfdcd834bfa8.png)

생성 버튼을 누르면 위와 같은 화면이 뜰텐데, command+a 키를 사용해서 전체 선택 후 command+c로 복사해주세요!

![스크린샷 2020-04-24 오후 7.07.01](https://user-images.githubusercontent.com/49138331/80203520-3e65d700-8662-11ea-9567-edb84ba01782.png)

다시 터미널로 돌아와서 command+v로 붙여넣기 하고 esc키를 누릅니다.
그리고 :wq!를 입력한 후에 엔터를 눌러줍니다.

그러면 .gitignore 설정 완료!
레포지토리에 커밋-푸시 후 사용해주시면 됩니다아 ‼️