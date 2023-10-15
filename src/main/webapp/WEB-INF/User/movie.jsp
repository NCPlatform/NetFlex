<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOVIE</title>
<link rel="stylesheet" href="/NetFlex/asset/css/user/movie.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/head.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/footer.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<jsp:include page="../User/header.jsp" />
<div id="searchContainer" class="container-fluid bg-dark">
	<div id="searchResult" class="row row-cols-5">

	</div>
</div>
<div id="bodyContainer" class="container-fluid">
<div>
  <div class="row row-cols-5" id="movieContainer">
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

	movieContainer.addEventListener("click", ()=>{
            modal.style.display="flex";
	});
	//modal.addEventListener("click", () => {
   //         modal.style.display = "none";
	//});
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" 
		integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" 
		crossorigin="anonymous"></script>  
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

<script type="text/javascript" src="/NetFlex/asset/js/user/movie.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/episode.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/iconsearch.js"></script>
</body>
</html>