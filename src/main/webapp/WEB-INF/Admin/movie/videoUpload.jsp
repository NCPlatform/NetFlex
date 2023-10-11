<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Upload Successsed</title>

<style>
	table{
		margin: 0 auto;
		border-collapse: collapse;
	}
	
	tr,td{
		border: none;	
	}
</style>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<div id = 'disp'>
		<table border = '1'>
			<caption>업로드 완료하였습니다.</caption>
			<tr>
				<td><button type = 'button' id = 'golist'>컨텐츠 목록 보기</button></td>
				<td><button type = 'button' id = 'goupload'>새 컨텐츠 등록하기</button></td>
				<td><button type = 'button' id = 'gomain'>메인으로 돌아가기</button></td>
			</tr>
		</table>
	</div>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#golist').click(function(){
			location.href = '/NetFlex/admin/video'
			
		});
		$('#goupload').click(function(){
			
			location.href = '/NetFlex/admin/video/videoUploadForm'
			
			// 방금 작성한 컨텐츠 수정하려면
			// location.href = /NetFlex/admin/video/updateForm?seqMovie=${sessionScope.seq}&ep=1
			// 이런 느낌으로 seq 세션 주고 그걸로 넘어가게 시킬 거임.(회차넘버는 default 1 준다) 
		});
		$('#gomain').click(function(){
			alert('준비중')
			
		});
	</script>
</body>
<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
</html>