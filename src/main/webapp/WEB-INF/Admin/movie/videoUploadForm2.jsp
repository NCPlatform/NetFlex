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
				<td>에피소드 번호</td>
				<td><input type="number" name="eplist"></td>
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
	<script>
		var tNum = 0;
		var epStory = '#epStory'+tNum
		var byteCheck = '#byteCheck'+tNum
		
		
		
		$('.addBtn').click(function(){
			
			tNum++;
			var tables = "<br><hr><table class = 'tables'>"
 				tables += "<tr><td>등록번호</td>"
				tables += "<td colspan = '4'><input type = 'text' value = '${sessionScope.seq}' readonly name = 'seqMovie'></td></tr>"
				
				tables += "<td>에피소드 번호</td><td><input type = 'number' name = 'eplist'></td>"
				tables += "<td>에피소드 제목</td><td colspan = '2'><input type = 'text' name = 'eptitle'></td>"
				tables += "</tr><tr><td>썸네일 이미지</td><td>파일&nbsp;&nbsp;<input type = 'file' name = 'thumbnailSrc'>"
				tables += "<br>URL&nbsp;&nbsp;<input type = 'text' name = 'thumbnailSrcUrl'></td>"
				tables += "<td>시청연령</td><td><select name = 'grade'><option value = 'ALL'>ALL</option>"	

				tables += "<option value = '7+'>7+</option><option value = '12+'>12+</option>"
				tables += "<option value = '15+'>15+</option><option value = '18+'>18+</option></select></td>"
				tables += "<tr><td>재생시간</td>"
				tables += "<td><input type = 'number' name = 'runtime'>분"
				tables += "<input type = 'number' name = 'runtime'>초</td>"
				tables += "<td colspan = '3'></td></tr>	"
				tables += "<td></td></tr><tr><td>줄거리</td><td colspan = '3'>"
				tables += "<textarea rows = '10' cols = '50' id = 'epStory"+tNum+"' name = 'epstory'></textarea>"
				tables += "<br><div id = 'byteCheck"+tNum+"'></div></td>"
				tables += "<td><button type = 'button' class = 'addBtn'>+</button></td></tr></table>"
			
			var script = "<script>"
			script += "$('#epStory"+tNum+"').keyup(function(e){"
			script += "var content"+tNum+" =$(this).val();"
			script += "$('#byteCheck"+tNum+"').text('('+content"+tNum+".length + ' / 255 bytes)');"
			script += "if (content"+tNum+".length > 255){"
			var span = "<span style = 'color:red;'>입력 가능 글자 수 초과</span>"
			script += "$('#byteCheck"+tNum+"').html(\""+span+"\");"
			script += "$(this).val(content"+tNum+".substring(0,255))}});"
			script += "<" // 태그 인식 자꾸 엉뚱하게 해서 다 짤라버림
			script += "/script"
			script += ">" 
			
			var addScript = '#byteCheck'+tNum
			$('#addTables').append(tables)
			$(addScript).after(script)
			console.log(script)
		})
		
		$('#epStory0').keyup(function(e) {
			var content = $(this).val();
			$('#byteCheck0').text("(" + content.length + " / 255 Bytes)"); 
			if (content.length > 255) {
				$('#byteCheck0').html("<span style = 'color:red;'>입력 가능 글자 수 초과</span>")
				$(this).val(content.substring(0, 255));
			}
			console.log('byteCheck value is : '+byteCheck)
			console.log('epStory value is : '+epStory)
		});
		
		/*
		$('#finish').click(function(){
			
			$('input[name="ep"]').each(function(){
				
				console.log($(this).val())
			})
			
		})*/
	</script>

</body>
</html>
<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 