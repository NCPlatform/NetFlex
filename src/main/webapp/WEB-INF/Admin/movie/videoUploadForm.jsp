<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Uploading Video</title>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<form id = 'videoUploadForm' action='/NetFlex/admin/video/videoUploadForm2'>
		<h3>컨텐츠 등록하기</h3>
		<table>
			
			<tr>
				<td><label><input type = 'radio' name = 'sortcode' value = '1'> 영화</label></td>
				<td><label><input type = 'radio' name = 'sortcode' value = '2'> 시리즈</label></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name = 'title' id="title" type = "text"></td>
			</tr>
			
			<tr>
				<td>공개 날짜</td>
				<td>
					<input name = 'releasedate' id = 'releasedate1' type = 'date'>
					<input name = 'releasedate2' id = 'releasedate2' type = 'time'>
					<!-- <input name = 'releasedate' id = 'releasedate' type = 'hidden'> -->
				</td>
			</tr>
			<tr>
				<td>장르</td>
				<td>
					<table>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '01'> Netflex Original</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '02'> 인디</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '03'> 가족</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '04'> 액션</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '05'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '06'> 로맨스</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '07'> 스릴러</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '08'> 호러</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '09'> SF</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '11'> 드라마</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '12'> 범죄</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '14'> 음악</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '16'> 단편 영화</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '17'> 어린이</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '18'> 하이틴</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '19'> 애니메이션</label></td>
							<!-- <td><label><input name = 'genre' type = 'checkbox' value = '20'> </label></td>
							 --><td></td>
						</tr>
						<tr>
							<td colspan='4'>
								<div id = 'themeCaution'></div>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
			<tr>
				<td>국가</td>
				<td>
					<select name = 'nation' id="nation">
						<option>국가 선택</option>
						<option value = 'original'>Netflex Original</option>
						<option value = '한국'>대한민국</option>
						<option value = '미국'>미국</option>
						<option value = '영국'>영국</option>
						<option value = '일본'>일본</option>
						<option value = '중국'>중국</option>
						<option value = '대만'>대만</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>서비스 언어</td>
				<td>
					<select id = 'language'>
						<option>언어 선택</option>
						<option value = '01'>한국어</option>
						<option value = '02'>영어</option>
						<option value = '03'>일본어</option>
						<option value = '04'>중국어</option>
						<option value = '05'>프랑스어</option>
						<option value = '06'>독일어</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>감독</td>
				<td><input type = 'text' id='director' name = 'director'></td>
			</tr>
			<tr>
				<td>개봉일</td>
				<td><input type = 'date'  name = 'year' id="updateDate" name="updateDate"></td>
			</tr>
			<tr>
				<td>출연진</td>
				<td><input type = 'text' id='actor' name = 'actor'></td>
			</tr>
			<tr>
				<td>줄거리</td>
				<td><textarea id = 'story' cols = '50' rows = '10' name = 'story'></textarea>
				<br><div id = 'byteCheck'></div>
				</td>
			</tr>
			<tr>
				<td>작품 썸네일</td>
				<td>파일로 추가하기&nbsp;&nbsp;<input type = 'file' name = 'thumbnailSrc'>
				<br>URL로 추가하기&nbsp;&nbsp;<input type = 'text' name = 'thumbnailSrcUrl'>
				</td>
			</tr>
						
		</table>
		<input type = 'hidden' readonly name = 'genrecode1' id = 'genrecode1'>
		<input type = 'hidden' readonly name = 'genrecode2' id = 'genrecode2'>
		<input type = 'hidden' readonly name = 'genrecode3' id = 'genrecode3'>
				
		<button id = 'go'>Let's Service!</button>
	</form>
</body>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="/NetFlex/asset/js/admin/insertMovie.js"></script>
	<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
	<jsp:include page="/WEB-INF/Admin/footDefault.jsp" />