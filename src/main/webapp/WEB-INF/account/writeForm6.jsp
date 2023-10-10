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
</style>
</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그아웃</button>
</header>

<body>
<form method="post" action="">
<div>
	<h1>Netflex를 함께 시청	할 가족이 있나요?</h1>
	
	<li>Netflex에는 동시에 접속이 가능한 세상이 준비되어 있습니다.</li>
	
<table>
	<tr>
		<td width="100" align ="center">이 름</td>
		<td><input type="text" id="name" name="name" placeholder= "이름 입력">
			<div id="nameDiv"></div>
		</td>
	</tr>
	<tr>
		<td width="100" align ="center">닉네임1</td>
		<td><input type="text" id="nickname1" name="nickname1" placeholder= "닉네임 입력">
			<div id="nicknameDiv1"></div>
		</td>
	</tr>
	<tr>
		<td width="100" align ="center">닉네임2</td>
		<td><input type="text" id="nickname2" name="nickname2" placeholder= "닉네임 입력">
			<div id="nicknameDiv2"></div>
		</td>
	</tr>
	<tr>
		<td width="100" align ="center">닉네임3</td>
		<td><input type="text" id="nickname3" name="nickname3" placeholder= "닉네임 입력">
			<div id="nicknameDiv3"></div>
		</td>
	</tr>
	<tr>
		<td width="100" align ="center">닉네임4</td>
		<td><input type="text" id="nickname3" name="nickname3" placeholder= "닉네임 입력">
			<div id="nicknameDiv4"></div>
		</td>
	</tr>
</table>
	<div>
		<button type="submit" id="nextPage">다음</button>
	</div>
</div>

<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</form>
</body>
</html>