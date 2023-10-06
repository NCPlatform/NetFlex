<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border-collapse:collapse;
}

#memberWriteForm div{
	font-size: 8pt;
	font-weight: bold;
	color: red;
}
</style>
</head>
<body>
<form id = "WriteForm" method="post" action="write.jsp">
	<table border="1" cellspacing ="0" cellpadding ="7">
		<tr >
				<td width="100" align ="center">이 름</td>
				<td><input type="text" id="name" name="name" placeholder= "이름 입력">
					<div id="nameDiv"></div>
				</td>
				
		</tr>
		
		<tr>
				<th>아이디</th>
				<td>
					<input type="text" id="id" name="id" placeholder="아이디 입력" size="30">
					<input type="button" value = "중복체크" onclick= "checkID()">
					<input type="text" id="sw">
					<div id="idDiv"></div>
				</td>
		</tr>
		
		<tr>
				<th>비밀번호</th>
				<td >
					<input type="password" id="pwd" name="pwd" size="40">
					<div id="pwdDiv"></div>
				</td>
		</tr>
		
		<tr>
				<th>재확인</th>
				<td>
					<input type="password" name="repwd" id="repwd" size="40">
					
				</td>
		</tr>
		
		<tr>
				<td align = "center">성 별</td>
				<td >
					<input type="radio" name="gender" value="0">남성
					<input type="radio" name="gender" value="1">여성				
				</td>
		</tr>
		
		
		<tr>
				<th><label>이메일</label></th>
				<td>
				<input type="text" name="email1" id="email1" style="width:120px;">
				@
				<input type="text" name="email2" id="email2" style="width:120px;">
				<select name="email3" id="email3" style="width:120px;">
				<option value="직접입력">직접입력</option>
				<option value="naver.com">naver.com</option>
				<option value="gmail.com">gmail.com</option>
				<option value="nate.com">nate.com</option>
				</select>
				<button onclick="emailAuthentication()" id="eamilAuthBtn" type="button" class="btnChk">인증 메일 보내기</button>
				</td>
				
		</tr>
		
		<tr>
			<th><a>이메일 인증번호 입력</a></th>
			<td><input type="text" name="authCode" id="inputAuthCode"  maxlength="10">
			<button onclick="authCodeCheck()" id="authCodeCheckBtn" type="button" class="btnChk">인증</button>
			<input type="hidden" name="authPass" id="authPass" value="false">
		</td>	
		</tr>	
		
		<tr>
				<td><label>휴대폰</label></td>
				<td>
				<select name="tel1" id="tel1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="019">019</option>
				</select>
				<input type="tel" id="tel2" name="tel2">	
				<input type="tel" id="tel3" name="tel3">	
				</td>
				
		</tr>
		
		
		<tr>
				<th><label>주 소</label></th>
				<td>
				<input type= "text" name="zipcode" id="zipcode"readonly>
				<input type= "button" value="우편번호검색" id="checkPostBtn"><br>
				<input type= "text" name="addr1" id="addr1" style="width: 400px;" placeholder="주소" readonly/><br>
				<input type= "text" name="addr2" id="addr2" style="width: 400px;" placeholder="상세주소"><br>
				</td>
		</tr>
		
		<tr>
			<th colspan="2">
				<button type="button" id="writeBtn">회원가입</button>
				<button type="button">다시작성</button>
			</th>
		</tr>
	</table>
</form>

<script type="text/javascript">
function checkID(){
	var id = document.getElementById("id").value;
	
	if(id =="")
		document.getElementById("idDiv").innerText = "먼저 아이디를 입력하세요.";
	else
		window.open("checkId.jsp?id=" +id, "checkId", "width=300 height=150 top=300 left=700");
}
</script>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="http://localhost:8080/memberJSP/js/write.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="http://localhost:8080/memberJSP/js/post.js"></script>
</body>
</html>