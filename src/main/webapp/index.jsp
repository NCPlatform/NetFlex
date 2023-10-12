<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>*** NetFlex 메인화면 ***</h3>
<h4>
	<a href="http://nid.naver.com/nidlogin.logout">네이버 소셜계정 로그아웃(주의:네이버로 이동합니다.)</a>
<!-- 	<p><a href="/NetFlix/user/login">로그인페이지</a></p>	 -->
<!-- 	<p><a href="/NetFlix/user/loginHelp">회원가입페이지</a></p>	 -->
<!-- 	<p><a href="/Self_NetFlix/user/userSearch">아이디찾기</a></p> -->
	<!-- <div class="login_button"><a href="/user/login">로그인</a></div> -->
	
	
	<c:if test="${sessionScope.memId == null }">
		<h3><a href="/NetFlex/user/loginForm">로그인</a></h3>
	</c:if>
	
	<c:if test="${sessionScope.memId != null }">
		<h3><a href="/NetFlex/user/logout.do">로그아웃</a></h3>
	</c:if>
</body>
</html>