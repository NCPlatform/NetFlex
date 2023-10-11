<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>video list</title>

<style>
/*
	a{
		text-decoration: none;
		color: gray;
	}
	#neworder{
		margin-left: 340px;
	}
	#nameorder{
		margin-left: 30px;
	}
	#searchInput{
		margin-left: 30px;
	}
	.search{
		text-align: right;
	}
	#header{
		display: inline-block;
	}
	
	ul li{
		display: inline-block;
	}
	h3, ul, table{
		margin: 0 auto;
	}

	td, th{
		width: 150px;
	}
	hr{
		width: 1020px;
	}
	th:nth-child(3){

		width: 500px;

	}
	td{
		text-align: center;
	}
	#pageblock span{
		margin: 10px;
	}
	#pageblock{
		text-align: center;
	}
	#currentPaging{
		color: red;
		font-style: bold;
	}
	img{
		width: 150px;
	}
	summary::marker{
		content: "";
	}
	details[open] summary{
		margin-top: 15px;
		margin-bottom: 15px;
	}
	.videoTitles{
		height: 300px;
	}
	
	.minis img{
		width: 75px;
	}
	*/
	#currentPaging{
	background-color: #2DB400 !important;
	border-radius: 7px;
	box-shadow: 2px 5px 10px #111;
}
</style>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<div id = 'disp'>
	
	<input type = "hidden" id = "pg" value = ${pg } >
	<!-- 
	<ul>
		<li><h3 style = "text-align: left;"> 서비스 중인 컨텐츠 목록</h3></li>
		<li><a href = ""><span id = "neworder">최신순</span></a></li>
		<li><a href = ""><span id = "nameorder">제목순</span></a></li>
		<li><input type = 'text' class = 'search' id = 'searchInput' name = 'searchKey' placeholder= '제목, 감독으로 검색'></li>
		<li><button type = 'button' class = 'search' id = 'doSearch'>search</button></li>
	</ul> -->
	
	<h3 style = "text-align: left;"> 서비스 중인 컨텐츠 목록</h3>
	<div class="row">
		<div class="btn-group col-3" role="group" aria-label="Basic radio toggle button group">
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
		  <label class="btn btn-outline-primary" for="btnradio1">최신순</label>
		
		  <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
		  <label class="btn btn-outline-primary" for="btnradio2">제목순</label>
		</div>
		<div class="col-7">
			<div class="input-group">
			  <input type="text" class="form-control" placeholder="제목, 감독명으로 검색" aria-label="Recipient's username" aria-describedby="button-addon2">
			  <button class="btn btn-outline-secondary" type="button" id="button-addon2">Button</button>
			</div>
		</div>
		<button type="btn" class="btn btn-success col-2" onclick="location.href='/NetFlex/admin/video/videoUploadForm'">컨텐츠 추가하기</button>
	</div>
		<hr>
		<table class="table" border = '1' frame = 'hsides' rules = 'rows' id = 'videoListTable'>
			<tr id = 'tabletitle' class="row">
				<th class="col-1">등록번호</th>
				<th class="col-3">이미지</th>
				<th class="col-4">작품명</th>
				<th class="col-2">감독(연도)</th>
				<th class="col-2">장르코드</th>
			</tr>
			
		</table>
		<br>
		<div id = "pageblock">${page }</div>
	</div>
</body>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="/NetFlex/asset/js/admin/listMovie.js"></script>
	<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
	<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />