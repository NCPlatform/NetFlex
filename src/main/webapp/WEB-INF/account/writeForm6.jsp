<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<link rel="stylesheet" href="../asset/css/writeForm6.css">

</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
  <a href="../../index.jsp" class="writeForm0_headerLoginBtn">로그아웃</a>
</header>

<body>
<div class="container">
<form method="post" action="" class="d-flex justify-content-center">
<div>
	<h1>Netflex를 함께 시청	할 가족이 있나요?</h1>
	
	<li>Netflex에는 동시에 접속이 가능한 세상이 준비되어 있습니다.</li>
	
<table>
	
		<div class="form-floating mb-3">
		<input type="text" class="form-control" id="name" name="name" placeholder= "이름 입력">
		<label for="floatingInput">이름 입력</label>
		
		<div class="form-floating mb-3">
		<input type="text" class="form-control" id="nickname1" name="nickname1" placeholder= "닉네임1 입력">
		<label for="floatingInput">닉네임1 입력</label>
		
		<div class="form-floating mb-3">
		<input type="text" class="form-control" id="nickname2" name="floatingInput" placeholder= "닉네임2 입력">
		<label for="floatingInput">닉네임2 입력</label>
	
		<div class="form-floating mb-3">
		<input type="text" class="form-control" id="nickname3" name="floatingInput" placeholder= "닉네임3 입력">
		<label for="floatingInput">닉네임3 입력</label>
	
		<div class="form-floating mb-3">
		<input type="text" class="form-control" id="nickname4" name="floatingInput" placeholder= "닉네임4 입력">
		<label for="floatingInput">닉네임4 입력</label>
	
</table>
	<div>
		<button type="submit" id="nextPage" class="continueBtn">다음</button>
	</div>
</div>

<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</form>
</div>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</body>
</html>