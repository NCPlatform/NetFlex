<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SERIES</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="../css/head.css">
</head>
<body>
<input type="hidden" id="pg" value="${pg }">
<jsp:include page="../user/header.jsp" />

<div id="userPagingDiv" style="text-align: center; width: 630px; margin-top: 10px;">
    <c:if test="${not empty pagingInfo}">
        <p>현재 페이지: ${pagingInfo.currentPage}</p>
        <p>전체 페이지 수: ${pagingInfo.totalPages}</p>
    </c:if>
</div>
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" 
        crossorigin="anonymous"></script>   
        
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="../js/scroll.js"></script>
<script type="text/javascript">
    function userPaging(pg) {
        location.href = "/NetFlex/user/series/?pg=" + pg;
    }
</script>
</body>
</html>