<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html5>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
header {
	display:flex;
	justify-content: space-between;
}
#writeForm0_headerLogo{
	width: 250px;
	height: 150px;
}
#writeForm0_headerLoginBtn{
	width: 100px;
	height: 30px;
}
h1{
	text-align: center;
}
h2{
	text-align: center;
}
h3{
	text-align: center;
}
tr{
	text-align: center;
}
</style>
</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그인</button>
</header>
<body>
<h1>대한민국 최대 히트작과 최고의 스토리가 모두 모인 곳</h1>
<h2>어디서나 자유롭게 시청하세요. 해지는 언제든지 가능합니다.</h2>

<h3>시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일주소를 입력하세요.</h3>

<form id = "WriteForm0" method="post" action="writeForm1" style="text-align: center;">
<table border="1" cellspacing ="0" cellpadding ="7" style="margin: auto;">
<tr>
		<td>
		<div class="form-floating mb-3">
		  <input type="email" class="form-control" id="floatingInput" name="email" placeholder="name@example.com">
		  <label for="floatingInput">이메일 주소</label>
		</div>
		<input type="button" value="시작하기" onclick="startAccount()">
	
		</td>
				
</tr>	
</table>
</form>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

 <script>
        function startAccount() {
        	  document.getElementById('WriteForm0').submit(); // 이동할 주소를 여기에 입력하세요.
        }
 </script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>