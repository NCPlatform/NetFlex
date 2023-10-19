<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Episodes</title>
</head>
<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<form>
		
		<table id = 'Episode'>
			
			<tbody>
			<tr>
				<td>에피소드 번호</td>
				<td><input type="number" name="ep" value = '${episodeDTO.ep }'></td>
				<td>에피소드 제목</td>
				<td colspan="2"><input type="text" name="eptitle" value = "${episodeDTO.eptitle }"></td>
			</tr>
			<tr>
				<td>썸네일 이미지</td>
				<td>파일&nbsp;&nbsp;<input type="file" name="thumbnailSrc">
				<br>URL&nbsp;&nbsp;<input type="text" name="thumbnailSrcUrl">
				<br>기존 썸네일&nbsp;&nbsp;<input type = "text" readonly value = '${episodeDTO.thumbnail }' name = "thumbnail">
				</td>
				<td>시청연령</td>
				<td><select name="grade">
					<option value="ALL" id = 'graA'>ALL</option>
					<option value="7+" id = 'gra7'>7+</option>
					<option value="12+" id = 'gra12'>12+</option>
					<option value="15+" id = 'gra15'>15+</option>
					<option value="18+" id = 'gra18'>18+</option>
				</select></td>
				<td></td>
			</tr>
			<tr>
				<td>재생시간</td>
				<td><input type="number" name="runtime" id = 'runtime_min'>분
				<input type="number" name="runtime" id = 'runtime_sec'>초</td>
				<td colspan="3">
				</td>
				
			</tr>	
			
			<tr>
				<td>줄거리</td>
				<td colspan="4">
					<textarea rows="10" cols="50" id="epStory" name="epstory">${episodeDTO.epstory }</textarea>
					<br><div id="byteCheck0"></div>
				</td>
				
			</tr>
			<tr>
				<td>영상 링크</td>
				<td colspan = '4'>
					<input type = 'text' name = "movieSrcUrl" value = '${episodeDTO.movieSrcUrl }'>
				</td>
			</tr>
		</tbody></table><hr><hr>
			<input type = 'hidden' value = ${episodeDTO.seqMovie } name = 'seqMovie'>
			<button id = 'go' type = 'button'>Let's Update!</button>&nbsp;&nbsp;
			<button id = 'delete' type = 'button'>이 에피소드 삭제하기</button>
	</form>
</body>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#delete').click(function(){
			
			if(confirm('정말 이 에피소드를 삭제할까요?')){
				 $.ajax({
						type: 'post',
						url: "/NetFlex/admin/video/episodeDelete?seqMovie="+'${episodeDTO.seqMovie}'+'&epNum='+'${episodeDTO.ep}',
						
						success : function(){
							alert("삭제가 완료되었습니다.");
							location.href = "/NetFlex/admin/video"						
						},error: function(e){
							
							console.log(e);
						}
						
						
					});
			}
		})
		$(function(){
			
			
			// ==============================
			var epruntime; 
			if('${episodeDTO.runtime}' != ''){
				epruntime = '${episodeDTO.runtime}';
				
				// console.log(epruntime);
				var epmin = parseInt(epruntime.substring(0,2))*60+parseInt(epruntime.substring(3,5))
				var epsec = parseInt(epruntime.substring(6,8));
				$('#runtime_min').prop('value', epmin);
				$('#runtime_sec').prop('value', epsec);
			}
			
			
			
			if('${episodeDTO.grade}'!=''){
			switch('${episodeDTO.grade}'){
				case 'ALL':{
					$('#graA').prop('selected', 1)
					break;
				}case '7+':{
					$('#gra7').prop('selected', 1)
					break;
				}case '12+':{
					$('#gra12').prop('selected', 1)
					break;
				}case '15+':{
					$('#gra15').prop('selected', 1)
					break;
				}case '18+':{
					$('#gra18').prop('selected', 1)
					break;
				}
			}
				
			}
		})
	
		$('#go').click(function(){
			
			 //  var releasedate = document.getElementById('releasedate1')
			 //  releasedate += document.getElementById('releasedate2')
			 //  document.getElementById('releeasedate').value = releasedate
			/*
			console.log($('[name=seqMovie]').val())
			 
			console.log($('[name=ep]').val()) 
			console.log( $('[name=eptitle]').val())
			console.log($('[name=thumbnailSrc]').val())
			console.log($('[name=thumbnailSrcUrl]').val())
			console.log($('[name=thumbnail]').val())
			console.log($('option:selected').val())
			
			console.log($('#runtime_min').val()+","+$('#runtime_sec').val())
			console.log($('[name=epstory]').val())
			console.log($('[name=movieSrcUrl]').val())
			
			*/
			  $.ajax({
					type: 'post',
					url: "/NetFlex/admin/video/episodeUpdate",
					data: {
						'ep' : $('[name=ep]').val(),
						'seqMovie' : $('[name=seqMovie]').val(),
						'eptitle' : $('[name=eptitle]').val(),
						'runtime' : $('#runtime_min').val()+","+$('#runtime_sec').val(),
						'grade':$('option:selected').val(),
						'epstory':$('[name=epstory]').val(),
						'thumbnailSrc':$('[name=thumbnailSrc]').val(),
						'thumbnailSrcUrl':$('[name=thumbnailSrcUrl]').val(),
						'movieSrcUrl':$('[name=movieSrcUrl]').val(),
						'thumbnail':$('[name=thumbnail]').val()
						
							
					},
					success : function(){
						alert("작성하신 수정사항을 저장하였습니다.");
						location.href = "/NetFlex/admin/video"						
					},error: function(e){
						
						console.log(e);
					}
					
					
				});/*
			 return false;
			  */
			
			   
		//	}
			
			// ========================
		});
		
		$("#story").keyup(function(e) {
			var content = $(this).val();
			$("#byteCheck").text("(" + content.length + " / 255 Bytes)"); 
			if (content.length > 255) {
				$("#byteCheck").html("<span style = 'color:red;'>입력 가능 글자 수 초과</span>")
				$(this).val(content.substring(0, 255));
			}
		});
	</script>
		<jsp:include page="/WEB-INF/Admin/footer.jsp" /> 
		<jsp:include page="/WEB-INF/Admin/footDefault.jsp" /> 
</html>