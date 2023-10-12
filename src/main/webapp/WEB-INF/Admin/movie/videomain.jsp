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
		 			
		 			var addcode;
		 			$.each(data, function(index, items){
		 				addcode = `<tr><td>`+items.seqMovie+`</td>`
		 				addcode += `<td><img src = \'`+items.thumbnail+`\'></td>`
		 				addcode += `<td><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
		 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
		 				addcode += `</details></td>`
		 				addcode += `<td>`+items.director+"("+items.year.substring(0,4)+")"
		 				addcode += `<td>`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
		 				$('#videoListTable').append(addcode)
		 					// details id = d+seqMovie
		 					// div id = c+seqMovie
		 					// details class = ds
		 					
				//	$('.title').click(function(){
					// 얘까지 success 함수에 들어가 있어야 한다 @@
					// 아이디 선택자는(클릭한 개체) $(this).text()
					// 이름 선택자는(왼쪽 td) $(this).
						 // alert($(this).parent().prev().text());
					//	 location.href = '/chapter06_Web/user/updateForm?id='+$(this).text()+'&pg='+$('#pg').val();
					
						/*
						
					 			*/
				//		alert("기다려줘유");
				//	});
					 	
		 			
		 			 
		 			})// each
		 			
		 			$('.title').click(function(){
		 				var seqMovie = $(this).parent().parent().prev().prev().text()
		 				$.ajax({
					 		type: 'post',
					 		url : '/NetFlex/admin/video/getEpisodeList',
					 		data: 'seqMovie='+seqMovie,
					 		dataType: 'json', 
					 		
					 		success: function(epdata){
					 			console.log(JSON.stringify(epdata))
					 			// stringify해서 콘솔에 찍어라
					 			var minitable;
					 			var tabletitle;
					 			/**/
					 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis\'>`
					 				minitable += `<tr>`
					 				minitable += `<th>회차번호</th>`
					 				minitable += `<th>썸네일</th>`
					 				minitable += `<th>소제목</th>`
					 				minitable += `<th>시청연령</th>`
					 				minitable += `</tr>`
					 				
			 					var divid = '#c'+seqMovie
				 				$(divid).html(tabletitle)
				 				
					 			$.each(epdata, function(index, episodes){
					 				minitable += `<tr>`
					 				minitable += `<td>`+episodes.ep+`</td>`
					 				minitable += `<td><img src = \'`+episodes.thumbnail+`\'></td>`
					 			// 231012 수정
					 				minitable += `<td class = 'eptitles'>`+episodes.eptitle+`<br><div class = 'modifies' id = \'`+"ep"+seqMovie+"_"+episodes.ep+`\'></div></td>`
					 			// ===============
					 				minitable += `<td>`+episodes.grade+`</td>`
					 				minitable += `</tr>`
					 				
					 				
					 				
					 				
					 				
					 			})// each(Episodes)
					 			
					 			$(divid).html(minitable)
					 			
					 			$('.eptitles').click(function(){
					 				
					 				$('.modifies').html("");
					 				
					 				var epNum = $(this).prev().prev().text()
					 				var seqMovie = $(this).closest('details').parent().prev().prev().text();
					 				var eploca = "/NetFlex/admin/video/videoUpdateForm?seqMovie="+seqMovie
					 				var epcont = "/NetFlex/admin/video/episodeUpdateForm?seqMovie="+seqMovie+"&epNum="+epNum
					 				var addbtns = '<button type = "button" onclick= \"location.href=\''+eploca+'\'\" >컨텐츠 수정하기</button>'
					 				addbtns += '<button type = "button" onclick= \"location.href=\''+epcont+'\'\">에피소드 수정하기</button>'
					 				
					 				var modifytag = '#ep'+seqMovie+"_"+epNum
					 				$(modifytag).html(addbtns);
					 				// location.href = '/NetFlex/admin/video/videoUpdateForm?seqMovie='+seqMovie+'&epNum='+epNum;
					 				
					 				
					 			})
					 			
					 							 			
					 			
					 		}, //success
		 					error: function(e){
				 			console.log(e) }
				 	
				 	
				 	}); // $.ajax
				 }); // $(click)
		 				
		 		//		})
		 			
		 		}, // success
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		 }); // $(function()
				 
				
		 
		function boardPaging(a){
			location.href = "/NetFlex/admin/video?pg="+a
		}
		

			
			
		
	</script>
	<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
</html>