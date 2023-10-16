<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="d-flex flex-row justify-content-between d-3">
	<div class="col-2 col-lg-2">
		<img class="img-fluid" src="/NetFlex/asset/image/netflexIcon.png"/ onclick="location.href='/NetFlex'">
	</div>
	<div class="col-2 col-md-2 px-2 py-5 d-grid">
		<c:if test="${email == null }">
			<button onclick="location.href='/NetFlex/account/loginForm'" class="btn btn-danger">로그인</button>
		</c:if>
		<c:if test="${email != null }">
			<button id="logout" class="btn btn-danger fluid">로그아웃</button>
		</c:if>
	</div>
</div>