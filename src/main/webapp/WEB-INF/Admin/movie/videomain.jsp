<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>video list</title>

<style>
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
		
	}
	
	.minis img{
		width: 75px;
	}
	
	.eptitles:hover{
		cursor: pointer;
	}
</style>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<div id = 'disp'>
	
	<input type = "hidden" id = "pg" value = ${pg } >
	<ul>
		<li><h3 style = "text-align: left;"> 서비스 중인 컨텐츠 목록</h3></li>
		<li><span id = "neworder">최신순</a></li>
		<li><span id = "nameorder">제목순</a></li>
		<li><input type = 'text' class = 'search' id = 'searchInput' name = 'searchKey' placeholder= '제목, 감독으로 검색'></li>
		<li><button type = 'button' class = 'search' id = 'doSearch'>search</button></li>
	</ul>

		<hr>
		<table border = '1' frame = 'hsides' rules = 'rows' >
			<tr id = 'tabletitle'>
				<th>등록번호</th>
				<th>이미지</th>
				<th>작품명</th>
				<th>감독(연도)</th>
				<th>장르코드</th>
			</tr>
			<tbody id = 'videoListTable'>
			
			</tbody>
		</table>
		<br>
		<div id = "pageblock">${page }</div>
	</div>
</body>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="/NetFlex/asset/js/admin/listMovie.js"></script>
	<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
	<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />