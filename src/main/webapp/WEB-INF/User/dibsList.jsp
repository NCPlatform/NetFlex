<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<link rel="stylesheet" href="/NetFlex/asset/css/user/home.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/head.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/footer.css">
<link rel="stylesheet" href="/NetFlex/asset/css/user/dibsList.css">
</head>
<body>
<jsp:include page="../User/header.jsp" />
<div id="searchContainer" class="container-fluid bg-dark">
	<div id="searchResult" class="row row-cols-5">

	</div>
</div>
<div id="bodyContainer" class="container-fluid">
  <c:forEach items="${likeMovie}" var="movie" varStatus="loop">
    <c:if test="${loop.index % 5 == 0}">
      <div class="row">
    </c:if>
    <div class="col-sm col-3 my-1">
      <img src="${movie.thumbnailSrcUrl}" class="d-block w-100" alt="...">
      <div class="button-container">
	      <button class="btn btn-primary details-button" id="openWatchAllJSP"
	              data-seq-movie="${movie.seqMovie}"
	              data-title="${movie.title}"
	              data-story="${movie.story}"
	              data-nation="${movie.nation}"
	              data-director="${movie.director}"
	              data-actor="${movie.actor}"
	              data-year="${movie.year}"
	              data-releasedate="${movie.releasedate}"
	              data-liked="${movie.liked}"
	              data-genrecode1="${movie.genrecode1}"
	              data-genrecode2="${movie.genrecode2}"
	              data-genrecode3="${movie.genrecode3}"
	              data-movie-srcurl="${movie.movieSrcUrl}"
	              data-movie-hit="${movie.hit}"
	              data-thumbnail-src="${movie.thumbnailSrc}"
	              data-thumbnail-srcurl="${movie.thumbnailSrcUrl}">
	          &#9654; 재생
	      </button>
	      <button class="btn btn-primary details-button2"
	              data-seq-movie="${movie.seqMovie}"
	              data-title="${movie.title}"
	              data-story="${movie.story}"
	              data-nation="${movie.nation}"
	              data-director="${movie.director}"
	              data-actor="${movie.actor}"
	              data-year="${movie.year}"
	              data-releasedate="${movie.releasedate}"
	              data-liked="${movie.liked}"
	              data-genrecode1="${movie.genrecode1}"
	              data-genrecode2="${movie.genrecode2}"
	              data-genrecode3="${movie.genrecode3}"
	              data-movie-srcurl="${movie.movieSrcUrl}"
	              data-movie-hit="${movie.hit}"
	              data-thumbnail-src="${movie.thumbnailSrc}"
	              data-thumbnail-srcurl="${movie.thumbnailSrcUrl}">&#8505; 상세정보
	      </button>
	  </div>
    </div>
    <c:if test="${loop.index % 5 == 4 or loop.index == movies.size() - 1}">
      </div> <!-- Close the last row -->
    </c:if>
  </c:forEach>
  <c:choose>
    <c:when test="${likeMovie.size() % 5 != 0}">
      <c:forEach begin="0" end="${4 - (likeMovie.size() % 5)}">
        <div class="col-sm col-3 my-1">
        </div>
      </c:forEach>
    </c:when>
  </c:choose>
</div>

    </div>
    
<!-- Modal -->
    <div class="modal fade dark-mode" id="videoModal" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true" style="width: 350">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <!-- <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">동영상 제목</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div> -->
                <div class="modal-body">
                    <iframe id="videoFrame" width="100%" height="315" src="" frameborder="0" allowfullscreen></iframe>
                    <hr>
                    <div id="actorInfo"></div>
                    <hr>
                    <div id="contents" class="episode-info">
                    </div>
                </div>
                <input type="hidden" id="liked" >
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="likeButton" onclick="handleLikeButtonClick()">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
                            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
                        </svg>&nbsp;
                        <div id="likeCount" style="float: right"></div>
                    </button>
                    <button class="btn info" id="dibs">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                             class="bi bi-cart-plus" viewBox="0 0 16 16">
                            <path d="M9 5.5a.5.5 0 0 0-1 0V7H6.5a.5.5 0 0 0 0 1H8v1.5a.5.5 0 0 0 1 0V8h1.5a.5.5 0 0 0 0-1H9V5.5z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                        </svg>&nbsp;
                        찜하기
                    </button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">닫기</button>
                </div>
            </div>
        </div>
    </div>
<jsp:include page="../User/footer.jsp"/>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script type="text/javascript">
    /* 좋아요 버튼 기능 */


    function handleLikeButtonClick() {
        var likeCountElement = document.getElementById('likeCount');
        var likeCount = parseInt(likeCountElement.innerText);

        var likeButtonIcon = document.querySelector('#likeButton svg');

        let like = document.querySelector('#likeButton svg svg').dataset.like;
        if (like==='true') {
            likeButtonIcon.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" data-like="false" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
            <path d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0 .288-.036-.585-.113-.856a2.144 2.144 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a9.84 9.84 0 0 0-.443.05 9.365 9.365 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111L8.864.046zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a8.908 8.908 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.224 2.224 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.866.866 0 0 1-.121.416c-.165.288-.503.56-1.066.56z"/>
        </svg>`;
            likeCount -= 1;
        } else {
            likeButtonIcon.innerHTML = `
        <svg xmlns="http://www.w3.org/2000/svg" data-like="true" width="16" height="16" fill="currentColor" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
            <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
        </svg>`;
            likeCount += 1;
        }

        likeCountElement.innerText = likeCount;
        var seqMovie = $('#likeButton').attr('seq-movie');
        $.ajax({
            url: '/NetFlex/like/' + seqMovie,
            type: 'GET',
            async: false,
            success: function () {
            },
            error: function (xhr, status, error) {
                console.log('에러 발생: ' + error);
            }
        });
        
        location.reload();
    }
</script>
<script type="text/javascript" src="/NetFlex/asset/js/user/iconsearch.js"></script>
<script type="text/javascript" src="/NetFlex/asset/js/user/header.js"></script>

</body>
</html>