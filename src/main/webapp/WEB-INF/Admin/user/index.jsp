<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!-- HEAD에 들어갈 코드 -->

<!-- HEAD에 들어갈 코드 -->
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<!-- 웹 코드 -->

<input type="hidden" id="userPg" value="${ userPg }" />
<input type="hidden" id="userPerPg" value="${ userPerPg }" />

<h3>유저</h3>
<jsp:include page="/WEB-INF/Admin/user/userManageForm.jsp" />
<h3 class="mt-5">멤버십</h3>
<jsp:include page="/WEB-INF/Admin/user/membershipForm.jsp" />

<!-- 웹 코드 -->
<jsp:include page="/WEB-INF/Admin/footer.jsp" />
<!-- 추가 JS코드 -->
<script src="/NetFlex/asset/js/admin/membershipTable.js"></script>
<script src="/NetFlex/asset/js/admin/userTable.js"></script>
<!-- 추가 JS코드 -->
<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />