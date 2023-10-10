<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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

		width: 400px;

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
</style>
</head>
<body>
	<div id = 'disp'>
	
	<input type = "hidden" id = "pg" value = ${pg } >
	<ul>
		<li><h3 style = "text-align: left;"> 서비스 중인 컨텐츠 목록</h3></li>
		<li><a href = ""><span id = "neworder">최신순</span></a></li>
		<li><a href = ""><span id = "nameorder">제목순</span></a></li>
		<li><input type = 'text' class = 'search' id = 'searchInput' name = 'searchKey' placeholder= '제목, 감독으로 검색'></li>
		<li><button type = 'button' class = 'search' id = 'doSearch'>search</button></li>
	</ul>

		<hr>
		<table border = '1' frame = 'hsides' rules = 'rows' id = 'videoListTable'>
			<tr id = 'tabletitle'>
				<th>등록번호</th>
				<th>이미지</th>
				<th>작품명</th>
				<th>감독(연도)</th>
				<th>장르코드</th>
			</tr>
			
		</table>
		<br>
		<div id = "pageblock">${page }</div>
	</div>
</body>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$(function(){
			$.ajax({
		 		type: 'post',
		 		url : '/NetFlex/admin/video/getVideoList',
		 		data: 'pg='+$('#pg').val(),
		 		dataType: 'json', 
		 		// 'text'나 'xml', 'json'이 가능하다. 
		 		success: function(data){
		 			console.log(JSON.stringify(data))
		 			// stringify해서 콘솔에 찍어라
		 			
		 			$.each(data, function(index, items){
		 			
		 				$('<tr/>').append($('<td/>', {
		 					text: items.seqMovie
		 				})).append($('<td/>', {
		 					
		 				}).append($('<img/>', {
		 					// videoDTO에서 thumbnail 부분 참고
		 					src: items.thumbnail, 
		 					class: 'thumbnail-image'
		 				}))).append($('<td/>',{
		 					
		 				}).append($('<a/>', {
		 					href: '#', 
		 					text: items.title,
		 					class: 'title'
		 				}))).append($('<td/>', {
		 					text: items.director+"("+items.year.substring(0,4)+")"
		 				})).append($('<td/>', {
		 					text: items.genrecode1+","+items.genrecode2+","+items.genrecode3
		 				})).appendTo($('#videoListTable'));
		 			 // 아이디 클릭했을 때
					$('.title').click(function(){
					// 얘까지 success 함수에 들어가 있어야 한다 @@
					// 아이디 선택자는(클릭한 개체) $(this).text()
					// 이름 선택자는(왼쪽 td) $(this).
						 // alert($(this).parent().prev().text());
					//	 location.href = '/chapter06_Web/user/updateForm?id='+$(this).text()+'&pg='+$('#pg').val();
						alert("기다려줘유");
					});
					
		 			
		 			 
		 			})},
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		 }); // $(function()
		 
		function boardPaging(a){
			location.href = "/NetFlex/admin/video?pg="+a
		}
		

			
			
		
	</script>
</html>