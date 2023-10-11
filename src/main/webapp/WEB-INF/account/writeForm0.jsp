<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo.css">
<link rel="stylesheet" href="../asset/css/writeForm0Background.css">
<link rel="stylesheet" href="../asset/css/writeForm0.css">

</head>
<div class="writeForm0Background">
<img alt="write0배경화면" src="../asset/image/writeForm0Background.jpg">
</div>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" class="writeForm0_headerLoginBtn">로그인</button>
</header>
<body>
<div class="writeForm0Info">
<h1>대한민국 최대 히트작과 최고의 스토리가 모두 모인 곳</h1><br>

<h2>어디서나 자유롭게 시청하세요. 해지는 언제든지 가능합니다.</h2><br>

<h3>시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일주소를 입력하세요.</h3>

</div>
<form id = "WriteForm0" method="post" action="writeForm1" style="text-align: center;">
<div class="table-container">
<table style="margin: auto;">
<tr>
		<td style="display: flex; justify-content: flex-end;">
		<div class="form-floating mb-3">
		  <input type="email" class="form-control" id="email" name="email" placeholder="이메일 주소">
		  <label for="email">이메일 주소</label>
		</div>
		<input type="button" class="startBtn" value="시작하기 >" onclick="startAccount()">
	
		</td>
				
</tr>	
</table>
<div class="table-container1">
<h1>	</h1>
</div>
<div class="banner">
	<div class="banner-popcorn">
		<img alt="팝콘" src="../asset/image/popcorn.jpg" class="banner-popcorn">
	</div>
	<div class="banner-info">
		<p class="banner-info1"> KRW5,500이면 만날 수 있는 넷플릭스. </p>
		<p class="banner-info1"> 광고형 스탠다드 멤버십에 가입하세요. </p>
	</div>
	</div>
</div>
</form>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

 <script>
function startAccount() {
    var email = $("#email").val();
    if (email == "") {
        alert("이메일을 올바르게 입력하세요.");
        return false;
    }
    document.getElementById('WriteForm0').submit(); // 이동할 주소를 여기에 입력하세요.
}
</script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>