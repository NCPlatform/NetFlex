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
li{
	font-size: 30px;
}
</style>
</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그아웃</button>
</header>

<body>
<form id = "writeForm2" method="post" action="writeForm3" style="text-align: center;">
<table cellpadding ="7" width="500" style="margin: auto;">
<tr>
	<td>
		
		<h2>원하는 멤버십을 선택하세요.</h2>
		
		<li> 無약정, 無위약금. 해지도 쿨하게 언제든지</li>
		<li> 하나의 요금으로 즐기는 끝없는 콘텐츠의 세계.</li>
		<li> 모든 디바이스에서 무제한 시청.</li>
		
		<input type="button" value="다음" onclick="membershipChoice()">


	</td>
				
</tr>	
</table>
</form>

<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

 <script>
        function membershipChoice() {
        	  document.getElementById('writeForm2').submit(); // 이동할 주소를 여기에 입력하세요.
        }
 </script>
</body>
</html>