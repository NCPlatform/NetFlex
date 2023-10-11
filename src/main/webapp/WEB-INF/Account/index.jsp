<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />

<h1>대한민국 최대 히트작과 최고의 스토리가 모두 모인 곳</h1>
<h2>어디서나 자유롭게 시청하세요. 해지는 언제든지 가능합니다.</h2>

<h3>시청할 준비가 되셨나요? 멤버십을 등록하거나 재시작하려면 이메일주소를 입력하세요.</h3>

<form id = "WriteForm0" method="post" action="writeForm1" style="text-align: center;">
<table border="1" cellspacing ="0" cellpadding ="7" style="margin: auto;">
<tr>
		<td>
		<div class="email">
		  <input type="email" class="email" id="email" name="email" placeholder="name@example.com">
		  <label for="email">이메일 주소</label>
		</div>
		<input type="button" value="시작하기" onclick="startAccount()">
	
		</td>
				
</tr>	
</table>
</form>

<jsp:include page="/WEB-INF/Account/headDefault.jsp" />