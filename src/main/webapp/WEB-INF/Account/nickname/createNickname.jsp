<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />
<link rel="stylesheet" href="/NetFlex/asset/css/account/headerLogo2.css" type="text/css"/>
<link rel="stylesheet" href="/NetFlex/asset/css/account/writeForm6.css" type="text/css"/>
<div class="container">
	<jsp:include page="/WEB-INF/Account/nav.jsp" />
</div>

<form method="post" action="">
	<div class="container">
		<h1>Netflex를 함께 시청	할 가족이 있나요?</h1>
		<p>Netflex에는 동시에 접속이 가능한 세상이 준비되어 있습니다.</p>
		<input type="hidden" id="email" name="email" value="${email}"/>
		<table class="table">
			<tr>
				<td width="100" align ="center">이 름</td>
				<td colspan="2">
					<input type="text" id="name" name="name" placeholder= "이름 입력" value="${ name }" readonly >
				</td>
			</tr>
			<tr>
				<td width="100" align ="center">닉네임1</td>
				<td><input type="text" id="nickname1" name="nickname1" placeholder= "닉네임 입력" >
					<div id="nicknameDiv1"></div>
				</td>
				<td class="genreTd">
					<table class="table">
						<tr>
							<td><label><input name = 'genre1' type = 'checkbox' value = '01'> Netflex Original</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '02'> 인디</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '03'> 가족</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '04'> 액션</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '05'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre1' type = 'checkbox' value = '06'> 로맨스</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '07'> 스릴러</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '08'> 호러</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '09'> SF</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre1' type = 'checkbox' value = '11'> 드라마</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '12'> 범죄</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '14'> 음악</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre1' type = 'checkbox' value = '16'> 단편 영화</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '17'> 어린이</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '18'> 하이틴</label></td>
							<td><label><input name = 'genre1' type = 'checkbox' value = '19'> 애니메이션</label></td>
							<td>
								<input type = 'hidden' readonly name = 'genrecode11' id = 'genrecode11'>
								<input type = 'hidden' readonly name = 'genrecode12' id = 'genrecode12'>
								<input type = 'hidden' readonly name = 'genrecode13' id = 'genrecode13'>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td width="100" align ="center">닉네임2</td>
				<td><input type="text" id="nickname2" name="nickname2" placeholder= "닉네임 입력">
					<div id="nicknameDiv2"></div>
				</td>
				<td class="genreTd" style="visibility: hidden">
					<table class="table">
						<tr>
							<td><label><input name = 'genre2' type = 'checkbox' value = '01'> Netflex Original</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '02'> 인디</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '03'> 가족</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '04'> 액션</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '05'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre2' type = 'checkbox' value = '06'> 로맨스</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '07'> 스릴러</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '08'> 호러</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '09'> SF</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre2' type = 'checkbox' value = '11'> 드라마</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '12'> 범죄</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '14'> 음악</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre2' type = 'checkbox' value = '16'> 단편 영화</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '17'> 어린이</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '18'> 하이틴</label></td>
							<td><label><input name = 'genre2' type = 'checkbox' value = '19'> 애니메이션</label></td>
							<td>
								<input type = 'hidden' readonly name = 'genrecode21' id = 'genrecode21'>
								<input type = 'hidden' readonly name = 'genrecode22' id = 'genrecode22'>
								<input type = 'hidden' readonly name = 'genrecode23' id = 'genrecode23'>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
			<tr>
				<td width="100" align ="center">닉네임3</td>
				<td><input type="text" id="nickname3" name="nickname3" placeholder= "닉네임 입력">
					<div id="nicknameDiv3"></div>
				</td>
				<td class="genreTd" style="visibility: hidden">
					<table class="table">
						<tr>
							<td><label><input name = 'genre3' type = 'checkbox' value = '01'> Netflex Original</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '02'> 인디</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '03'> 가족</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '04'> 액션</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '05'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre3' type = 'checkbox' value = '06'> 로맨스</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '07'> 스릴러</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '08'> 호러</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '09'> SF</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre3' type = 'checkbox' value = '11'> 드라마</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '12'> 범죄</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '14'> 음악</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre3' type = 'checkbox' value = '16'> 단편 영화</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '17'> 어린이</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '18'> 하이틴</label></td>
							<td><label><input name = 'genre3' type = 'checkbox' value = '19'> 애니메이션</label></td>
					
							<td>
								<input type = 'hidden' readonly name = 'genrecode31' id = 'genrecode31'>
								<input type = 'hidden' readonly name = 'genrecode32' id = 'genrecode32'>
								<input type = 'hidden' readonly name = 'genrecode33' id = 'genrecode33'>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
			<tr>
				<td width="100" align ="center">닉네임4</td>
				<td><input type="text" id="nickname4" name="nickname4" placeholder= "닉네임 입력">
					<div id="nicknameDiv4"></div>
				</td>
				<td class="genreTd" style="visibility: hidden">
					<table class="table">
						<tr>
							<td><label><input name = 'genre4' type = 'checkbox' value = '01'> Netflex Original</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '02'> 인디</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '03'> 가족</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '04'> 액션</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '05'> 코미디</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre4' type = 'checkbox' value = '06'> 로맨스</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '07'> 스릴러</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '08'> 호러</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '09'> SF</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '10'> 판타지</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre4' type = 'checkbox' value = '11'> 드라마</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '12'> 범죄</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '13'> 다큐멘터리</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '14'> 음악</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '15'> 고전</label></td>
						</tr>
						<tr>
							<td><label><input name = 'genre4' type = 'checkbox' value = '16'> 단편 영화</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '17'> 어린이</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '18'> 하이틴</label></td>
							<td><label><input name = 'genre4' type = 'checkbox' value = '19'> 애니메이션</label></td>
							
 							<td>
								<input type = 'hidden' readonly name = 'genrecode41' id = 'genrecode41'>
								<input type = 'hidden' readonly name = 'genrecode42' id = 'genrecode42'>
								<input type = 'hidden' readonly name = 'genrecode43' id = 'genrecode43'>
							</td>
						</tr>
						
					</table>
				</td>
			</tr>
		</table>
		<div class="d-flex justify-content-end">
			<button type="button" id="finish" class="btn btn-danger">다음</button>
		</div>
	</div>
</form>

<jsp:include page="/WEB-INF/Account/footer.jsp" />
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />