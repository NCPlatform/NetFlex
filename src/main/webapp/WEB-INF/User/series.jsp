<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>TEST</title>
<link rel="stylesheet" href="/NetFlex/asset/css/user/series.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/head.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
crossorigin="anonymous">
<body>
<jsp:include page="../User/header.jsp" />
<div id="searchContainer" class="container-fluid bg-dark">
	<div id="searchResult" class="row row-cols-5">

	</div>
</div>
<div id="bodyContainer" class="container-fluid">
<div>
  <div class="row row-cols-5" id="imageContainer"> 
  </div>
</div>

<div class="modal" id="movieModal">
    <div class="modal-content">
        <button class="close-button">닫기</button>
        <hr>
        <h3 id="modalTitle"></h3>
        <div id="youtubeVideo"></div>
        <p><strong>제목: </strong> <span id="title"></span></p>
        <p><strong>출연자: </strong> <span id="actor"></span></p>
        <p><strong>감독:  </strong> <span id="director"></span></p>
        <p><strong>스토리: </strong> <span id="story"></span></p>
        <hr>
		<button class="details-buttons" 
		>에피소드 열기	
		</button>        
        <div id="contents"></div>
    </div>
</div>
</div>
<jsp:include page="../User/footer.jsp" />
<script>
	const modal = document.querySelector('.modal');
	const btnOpenModal=document.querySelector('.btn-open-modal');

	imageContainer.addEventListener("click", ()=>{
            modal.style.display="flex";
	});
	//modal.addEventListener("click", () => {
   //         modal.style.display = "none";
	//});
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
crossorigin="anonymous">
</script>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

<script type="text/javascript" src="/NetFlex/asset/js/user/serise.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/modal.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/iconsearch.js"></script>

</body>
</html>