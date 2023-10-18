<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${login == null }">
	<script>
		location.href="account"
	</script>
</c:if>
<c:if test="${login != null }">
	<script>
		location.href="/NetFlex/movie"
	</script>
</c:if>