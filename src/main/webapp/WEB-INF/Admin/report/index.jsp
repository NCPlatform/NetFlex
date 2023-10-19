<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!-- HEAD에 들어갈 코드 -->

<!-- HEAD에 들어갈 코드 -->
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<!-- 웹 코드 -->
<h3>신고 관리</h3>
<input type="hidden" id="pg" value="${ pg }" />
<input type="hidden" id="perPg" value="${ perPg }" />
<jsp:include page="/WEB-INF/Admin/report/ReportTable.jsp" />
<!-- 웹 코드 -->
<jsp:include page="/WEB-INF/Admin/footer.jsp" />
<!-- 추가 JS코드 -->
<script src="/NetFlex/asset/js/admin/reportTable.js"></script>
<!-- 추가 JS코드 -->
<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />