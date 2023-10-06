<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
		<input type="text" value="이메일 주소" name="email" id="email"  style="width:300px; height:50px;" >
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
</body>
</html>