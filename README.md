<img src="https://capsule-render.vercel.app/api?type=waving&color=ff0000&height=200&section=header&text=NetFlex&fontSize=90" />

## NaverCloudPlatform
KDT MID PROJECT > NetFlix Clone Coding

<img src="https://github.com/NCPlatform/NetFlex/blob/main/src/main/webapp/WEB-INF/Asset/image/netflex.png?raw=true">

<div align="center">

<b> :bookmark: Platform & Languages :bookmark: </b>

<div>
<img src="https://img.shields.io/badge/SpringLegacy-6DB33F?style=flat&logo=spring&logoColor=white"/>
<img src="https://img.shields.io/badge/NaverCloud-03C75A?style=flat&logo=Naver&logoColor=white"/>
</div>
<div>
<img src="https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=HTML5&logoColor=white"/>
<img src="https://img.shields.io/badge/CSS-1572B6?style=flat&logo=css3&logoColor=white"/>
<img src="https://img.shields.io/badge/BootStrap-7952B3?style=flat&logo=bootstrap&logoColor=white"/>
<img src="https://img.shields.io/badge/JQuery-0769AD?style=flat&logo=jquery&logoColor=white"/>
<img src="https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=JavaScript&logoColor=white"/>
</div>

<b> :wrench: Tools :wrench: </b>

<div>
<img src="https://img.shields.io/badge/STS3-6DB33F?style=flat&logo=spring&logoColor=white"/>
<img src="https://img.shields.io/badge/Apache%20Tomcat-F8DC75?style=flat&logo=Apache%20Tomcat&logoColor=white"/>
<img src="https://img.shields.io/badge/GitHub-181717?style=flat&logo=github&logoColor=white"/>
<img src="https://img.shields.io/badge/Slack-4A154B?style=flat&logo=slack&logoColor=white"/>
<img src="https://img.shields.io/badge/Notion-000000?style=flat&logo=notion&logoColor=white"/>
<img src="https://img.shields.io/badge/Discord-5865F2?style=flat&logo=discord&logoColor=white"/>
</div>

</div>

## Web Distribution Address

http://175.106.97.119:8090/NetFlex

2023.12.14까지 NaverCloudPlatform 서버에 업로드

## Teammate and Role
### 1. ADMIN
넷플릭스 화면 중 우리가 접할 수 없는 영화를 추가하거나 유저관리를 하는 화면 구현
<img src="https://github.com/NCPlatform/NetFlex/blob/adminAY/src/main/webapp/WEB-INF/Asset/image/ADMIN_PAGE.png?raw=true">
- 손아영
  - 
  - MYSQL DB 관리
    - ERD를 사용해 테이블 구조 설계
    - 테이블 초기 설정
    - 수정 사항 발생에 따른 테이블 구조 변경 및 추가 생성
  - 깃 관리
  - 프로젝트 패키지 구조 설계
  - 관리자 페이지 NAV, 대시보드, 리포트, 유저 페이지 구현
    - 부트스트랩을 사용한 반응형 디자인
    - Sweet Alert사용하여 알람창 디자인
    - 관리자 페이지에 필요한 정보 JQUERY를 사용해 동적 구현
    - 댓글 신고 관리
      - 댓글 신고 체크버튼을 누르면 해당 댓글을 신고한 리포트 전부 한번에 처리되게 하며 처리 여부에 따라 버튼 디자인이 바뀌며 처리된 신고의 버튼은 클릭되지 않음
  - 유저 페이지 검색 기능 구현
    - 영화 목록 검색 기능 구현 영화 배우, 감독, 제목으로 검색 가능
  - 회원가입 페이지 회원가입 기능 구현
  - NaverCloudServer에 프로젝트 파일 업로드
    - jenkin와 docker를 사용해 웹 배포
- 이주영
  - 
  - MYSQL DB 관리
    - ERD를 사용해 테이블 구조 설계
    - 수정 사항 발생에 따른 테이블 구조 변경 및 추가 생성
  - 관리자 페이지 영화 페이지 구현
    - 영화 정보 입력시 movie테이블에 영화 데이터 삽입 및 새로운 영화 에피소드 테이블 생성 기능 구현
    - 영화 생성 및 수정 및 삭제 기능
    - 영화 에피소드 생성 및 수정 및 삭제 기능
      - 에피소드 추가 버튼을 누르면 입력칸이 동적으로 추가됨
  - 회원가입 페이지 이메일 인증 구현
    - 자바로 난수생성하여 javax.mail을 이용해 메일 전송
    - 정송되는 메일 내용의 디자인
    - 인증번호 입력 타이머 기능 구현
  - NaverCloudServer에 프로젝트 파일 업로드
    - jenkin와 docker를 사용해 웹 배포
    - 리눅스 명령어를 사용해 jenkins 및 docker 내에서 발생한 오류 확인 및 수정
### 2. USER
  넷플릭스 화면 중 유저가 접하고 사용하는 화면 구현
    <img src="https://github.com/NCPlatform/NetFlex/blob/adminAY/src/main/webapp/WEB-INF/Asset/image/USER_PAGE.png?raw=true">
- 이은찬
  - 
  - User Page에 필요한 내용 구성 및 설계
  - 유저 페이지 구현(메인 페이지 / 내가 찜한 리스트)
    - JQuery를 사용해 영화 목록 동적으로 불러오기
      - Model을 통해 데이터를 불러와 jstl을 사용해 각 캐러셀로 나누어 페이지 로드
      - 캐러셀의 이미지에 mouse hover시 재생버튼과 상세정보 버튼 띄우기
      - 재생버튼과 상세정보 버튼에 동적으로 불러왔던 정보들을 data속성으로 저장하기
      - 상세정보 버튼 클릭시
        - 상세정보 버튼을 누르면 모달창을 띄우고 버튼에 저장해두었던 data속성값으로 모달창 초기화
        - movie테이블의 키 값을 사용해 에피소드 정보 동적으로 읽어와 모달창의 에피소드 정보 동적 할당
      - 재생 버튼 클릭시
        - 영화 재생 페이지로 이동하여 저장된 영상 자동 재생
    - 좋아요 기능 구현
      - 영화별 모달창에 좋아요 버튼을 배치해 좋아요를 누르면 movie테이블의 좋아요개수를 카운트하는 컬럼 값 증가
      - liked 테이블에 계정 정보와 영화 정보를 사용한 좋아요 누른 데이터 입력
  - 내가 찜한 리스트 페이지 구현
    - 내 계정정보를 사용해 내가 좋아요를 누른 영화 목록만 모아 볼 수 있는 페이지 구현
- 이지현
  - 
  - User Page에 필요한 내용 구성 및 설계
  - 유저 페이지 구현(시리즈 / 영화)
    - 에피소드 테이블에 입력되어있는 데이터 개수에 따른 시리즈 및 영화 페이지 분리
    - 페이지 로드시 JQuery를 사용해 시리즈 또는 영화 목록 동적으로 불러오기
      - JQuery를 사용해 영화 목록 동적으로 불러와서 그리드 레이아웃에 맞게 적용
      - 영화 및 시리즈의 이미지 클릭시 클릭된 버튼에 저장되어있는 정보로 모달창 호출
      - 클릭한 이미지에 저장되어있던 데이터를 사용해 추가적으로 필요한 영화 정보 및 에피소드 정보를 JQuery를 사용해 동적으로 불러오기
  - 캐러셀 디자인
    - 부트스트랩을 사용한 캐러셀 이미지 배치 디자인 및 indicator css 위치 디자인
  - footer 및 nav
    - 반응형 디자인 및 개별 css 파일 생성해 적용
### 3. ACCOUNT
회원가입 및 로그인 구현
<img src="https://github.com/NCPlatform/NetFlex/blob/adminAY/src/main/webapp/WEB-INF/Asset/image/ACCOUNT_PAGE.png?raw=true">
- 이윤혁
  - 
  - 일반 계정 로그인 페이지 구현
    - 입력한 값이 DB에 저장된 유저의 정보가 맞는지 확인
    - 로그인 여부에 따라 다른 페이지 로드
  - 소셜 로그인 기능 구현
    - Naver Developer api을 사용해 Naver 소셜 로그인 기능 구현
  - 아이디 비밀번호 찾기 기능 구현
    - 아이디 비밀번호 찾기 창 반응형 CSS 디자인
    - 사용자의 이름을 입력하면 해당 이름을 갖는 아이디값 반환하여 alert으로 띄우기
    - 사용자의 이름 및 아이디를 입력하면 해당 이름과 아이디를 갖는 비밀번호를 반환하여 alert으로 띄우기
- 이경호
  - 
  - 회원가입 페이지 구현
  - NETFLIX 화면 참조하여 NETFLEX 회원가입 페이지 CSS스타일 적용
    - NetFlix 회원가입 단계에 따른 6 페이지 레이아웃 작업
      - 외부 스타일시트를 사용하지 않은 CSS 작업
    - Membership 페이지
      - 정보 초기에 3개만 띄우다 버튼 누르면 1개 더 추가로 띄우는 css애니메이션을 버튼 클릭 이벤트로 구현
      - 클릭한 Membership 정보에 따라 이미지 변경 및 text의 css스타일 변경 기능 구현
  - 회원가입 기능
    - 입력 form에서 넘겨준 정보를 controller class에서 @RequestParam을 사용해 value를 얻어 다음페이지에 Model 객체를 이용해 값 넘겨주기

<img src="https://capsule-render.vercel.app/api?type=waving&color=ff0000&height=200&section=footer" />