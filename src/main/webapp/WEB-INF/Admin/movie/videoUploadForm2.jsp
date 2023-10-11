<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Episode Upload</title>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<form action="/NetFlex/admin/video/videoUpload">
	
		<h3>에피소드 등록하기</h3>
		<table class="tables">
			
			<tbody><tr>
				<td>등록번호</td>
				<td colspan="4"><input type="text" value="${sessionScope.seq}" readonly name="seqMovie"></td>
			</tr>
			<tr>
				<td>에피소드 제목</td>
				<td colspan="2"><input type="text" name="eptitle"></td>
			</tr>
			<tr>
				<td>썸네일 이미지</td>
				<td>파일&nbsp;&nbsp;<input type="file" name="thumbnailSrc">
				<br>URL&nbsp;&nbsp;<input type="text" name="thumbnailSrcUrl">
				</td>
				<td>시청연령</td>
				<td><select name="grade">
					<option value="ALL">ALL</option>
					<option value="7+">7+</option>
					<option value="12+">12+</option>
					<option value="15+">15+</option>
					<option value="18+">18+</option>
				</select></td>
				<td></td>
			</tr>
			<tr>
				<td>재생시간</td>
				<td><input type="number" name="runtime">분
				<input type="number" name="runtime">초</td>
				<td colspan="3"></td>
				
			</tr>	
			
			<tr>
				<td>줄거리</td>
				<td colspan="3">
					<textarea rows="10" cols="50" id="epStory0" name="epstory"></textarea>
					<br><div id="byteCheck0"></div>
				</td>
				<td><button type="button" class="addBtn">+</button></td>
			</tr>
		</tbody></table>
		<div id="addTables"></div>
		
		<br>
		
		<input type="submit" value="완료하기" id = 'finish'>
		<!-- 
		<button type = 'button' id = 'finish'>test</button>-->
	</form>
	<script type="text/javascript" src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="/NetFlex/asset/js/admin/insertMovieEp.js"></script>

</body>
	<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
	<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />