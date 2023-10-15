<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>재생 창</title>
<link rel="stylesheet" href="/NetFlex/asset/css/user/head.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	  rel="stylesheet"
	  integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	  crossorigin="anonymous"/>
</head>
<body>
<jsp:include page="../User/header.jsp" />
<div id="searchContainer" class="container-fluid bg-dark">
	<div id="searchResult" class="row row-cols-5">

	</div>
</div>
<div id="bodyContainer" class="container-fluid">
	<main class="d-flex justify-content-center">
		<div id="player"></div>
	</main>
</div>
<jsp:include page="../User/footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/watch.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/home.js"></script>
</body>
</html>