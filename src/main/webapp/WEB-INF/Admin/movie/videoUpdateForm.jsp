<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/Admin/headDefault.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Contents</title>
</head>

<jsp:include page="/WEB-INF/Admin/header.jsp" />
<body>
	<form>
		<table id = "Video">
			<tr>
				<td><label><input type = 'radio' name = 'sortcode' value = '1' id = 's1'> 영화</label></td>
				<td><label><input type = 'radio' name = 'sortcode' value = '2' id = 's2'> 시리즈</label></td>
				
			</tr>
			<tr>
				<td>제목</td>
				<td><input name = 'title' type = "text" value = '${videoDTO.title }'>
					<input type = 'hidden' type = 'text' name = 'seqMovie' value = '${videoDTO.seqMovie }'>
				</td>
			</tr>
			
			<tr>
				<td>공개 날짜</td>
				<td>
					<input name = 'releasedate' id = 'releasedate1' type = 'date' value = '${videoDTO.releasedate }'>
					<!-- <input name = 'releasedate2' id = 'releasedate2' type = 'time' value = '00:00'> -->
					<!-- <input name = 'releasedate' id = 'releasedate' type = 'hidden'> -->
				</td>
			</tr>
			<tr>
				<td>장르</td>
				<td>
					<table>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '01' id = 'g1'> Netflex Original</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '02' id = 'g2'> 인디</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '03' id = 'g3'> 가족</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '04' id = 'g4'> 액션</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '05' id = 'g5'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '06' id = 'g6'> 로맨스</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '07' id = 'g7'> 스릴러</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '08' id = 'g8'> 호러</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '09' id = 'g9'> SF</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '10' id = 'g10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '11' id = 'g11'> 드라마</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '12' id = 'g12'> 범죄</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '13' id = 'g13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '14' id = 'g14'> 음악</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '15' id = 'g15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre' type = 'checkbox' value = '16' id = 'g16'> 단편 영화</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '17' id = 'g17'> 어린이</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '18' id = 'g18'> 하이틴</label></td>
							<td><label><input name = 'genre' type = 'checkbox' value = '19' id = 'g19'> 애니메이션</label></td>
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
					<select name = 'nation'>
						<option value = '${videoDTO.nation }'>${videoDTO.nation }</option>
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
						<option value = '01' id = 'l1'>한국어</option>
						<option value = '02' id = 'l2'>영어</option>
						<option value = '03' id = 'l3'>일본어</option>
						<option value = '04' id = 'l4'>중국어</option>
						<option value = '05' id = 'l5'>프랑스어</option>
						<option value = '06' id = 'l6'>독일어</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>감독</td>
				<td><input type = 'text' name = 'director' value = '${videoDTO.director }'></td>
			</tr>
			<tr>
				<td>개봉일</td>
				<td><input type = 'date' name = 'year' value = '${videoDTO.year }'></td>
			</tr>
			<tr>
				<td>출연진</td>
				<td><input type = 'text' name = 'actor' value = '${videoDTO.actor }'></td>
			</tr>
			<tr>
				<td>줄거리</td>
				<td><textarea id = 'story' cols = '50' rows = '10' name = 'story'>${videoDTO.story }</textarea>
				<br><div id = 'byteCheck'></div>
				</td>
			</tr>
			<tr>
				<td>작품 썸네일</td>
				<td>파일로 추가하기&nbsp;&nbsp;<input type = 'file' name = 'thumbnailSrc'>
				<br>URL로 추가하기&nbsp;&nbsp;<input type = 'text' name = 'thumbnailSrcUrl'>
				<br>기존 썸네일 &nbsp;&nbsp;<input type = 'text' readonly name = 'thumbnail' value = '${videoDTO.thumbnail }'>
				</td>
			</tr>
						
		</table>
				<input type = 'hidden' readonly name = 'genrecode1' id = 'genrecode1'>
				<input type = 'hidden' readonly name = 'genrecode2' id = 'genrecode2'>
				<input type = 'hidden' readonly name = 'genrecode3' id = 'genrecode3'>
				
		<hr class = 'hrs'><hr class = 'hrs'>
				
		<button id = 'go' type = 'button'>Let's Update!</button>&nbsp;&nbsp;
		<button id = 'delete' type = 'button'>이 컨텐츠 삭제하기</button>
	</form>
</body>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script>
		$('#delete').click(function(){
			
			if(confirm('정말 이 컨텐츠를 삭제할까요? 등록된 회차가 모두 사라집니다.')){
				 $.ajax({
						type: 'post',
						url: "/NetFlex/admin/video/videoDelete?seqMovie="+'${videoDTO.seqMovie}',
						
						success : function(){
							alert("삭제가 완료되었습니다.");
							location.href = "/NetFlex/admin/video"						
						},error: function(e){
							
							console.log(e);
						}
						
						
					});
			}else{
				
			}
		})
	
		$(function(){
			var dtogcode1 = parseInt('${videoDTO.genrecode1}')%100;
			var dtogcode2 = '${videoDTO.genrecode2}';
			var dtogcode3 = '${videoDTO.genrecode3}';
			
			var dtotags = ['#g'+dtogcode1, '#g'+dtogcode2, '#g'+dtogcode3];
			
			for(var i = 0; i<3; i++){
				$(dtotags[i]).prop("checked", 1);
				
			}
			console.log(dtogcode1);
			console.log(dtogcode2);
			console.log(dtogcode3);
			
			var dtoscode = parseInt('${videoDTO.genrecode1}')/10000;
			console.log(dtoscode)
			if(dtoscode>=2){
				$('#s2').prop("checked",1);
			}else if(dtoscode<2){
				$('#s1').prop("checked",1);
			}
			
			var dtolcode = Math.floor(parseInt('${videoDTO.genrecode1}')%10000/100);
			switch(dtolcode){
				case 1:{
					$('#l1').prop("selected",1);
					break;
				}case 2:{
					$('#l2').prop("selected", 1);
					break;
				}case 3:{
					$('#l3').prop("selected", 1);
					break;
				}case 4:{
					$('#l4').prop("selected", 1);
					break;
				}case 5:{
					$('#l5').prop("selected", 1);
					break;
				}case 6:{
					$('#l6').prop("selected", 1);
					break;
				}
			}
			// videoDTO 처리
			
			// ==============================
			var epruntime = '${episodeDTO.runtime}';
			var epmin = parseInt(epruntime.substring(0,2))*60+parseInt(epruntime.substring(3,5))
			var epsec = parseInt(epruntime.substring(6,8));
			$('#runtime_min').prop('value', epmin);
			$('#runtime_sec').prop('value', epsec);
			
			
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
				
		
		})
	
		$('#go').click(function(){
			
			var checked = $('input:checkbox[name=genre]:checked').length;
			
			// ---------- 컨텐츠 코드 만들기
			var sortcode = $('input:radio[name=sortcode]:checked').val();
			var langcode = $('#language option:selected').val();
			
			var checked = $('input:checkbox[name=genre]:checked').length;
			
			if(checked >= 4){
				$('#themeCaution').html("<span style = 'color: red;'>장르는 세 개까지만 선택 가능합니다.</span>")
				return false;	
			}else{
				
				var genres = [];
			    $('input[name=genre]:checked').each(function() {
			        genres.push($(this).val());
			    });
				
			   var genrecode1 = sortcode+""+langcode+""+genres[0]
			   var genrecode2 = genres[1]
			   var genrecode3 = genres[2]
			    
			   if (typeof genrecode2 =="undefined"){
				   genrecode2 = 0;
			   }
			   if (typeof genrecode3 == "undefined"){
				   genrecode3 = 0;
			   } 
			   
			   document.getElementById('genrecode1').value = genrecode1
			   document.getElementById('genrecode2').value = genrecode2
			   document.getElementById('genrecode3').value = genrecode3
			  
			 //  var releasedate = document.getElementById('releasedate1')
			 //  releasedate += document.getElementById('releasedate2')
			 //  document.getElementById('releeasedate').value = releasedate
		
			  /*
			 return false;
			*/	
			   $.ajax({
					type: 'post',
					url: "/NetFlex/admin/video/videoUpdate",
					data: {
						'seqMovie' : ${videoDTO.seqMovie},
						'title' : $('[name=title]').val(),
						'releasedate' : $('[name=releasedate]').val(),
						'genrecode1': $('#genrecode1').val(),
						'genrecode2':$('#genrecode2').val(),
						'genrecode3':$('#genrecode3').val(),
						'nation':$('option:selected').val(),
						'director':$('[name=director]').val(),
						'year':$('[name=year]').val(),
						'story':$('[name=story]').val(),
						'actor':$('[name=actor]').val(),
						'thumbnailSrc':$('[name=thumbnailSrc]').val(),
						'thumbnailSrcUrl':$('[name=thumbnailSrcUrl]').val(),
						'thumbnail':$('[name=thumbnail]').val()
						
							
					},
					success : function(){
						alert("작성하신 수정사항을 저장하였습니다.");
						location.href = "/NetFlex/admin/video"						
					},error: function(e){
						
						console.log(e);
					}
					
					
				});
			   
			   
			   
			}
			
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
	</html>