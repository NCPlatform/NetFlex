<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />

<h1>세션이 만료되었습니다. 처음부터 진행해주세요.</h1>
<button class="btn btn-dark" onclick="location.href='/NetFlex/Account/'">처음부터</button>

<jsp:include page="/WEB-INF/Account/footer.jsp" />
<script src="/NetFlex/asset/js/account/validation.js"></script>
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />