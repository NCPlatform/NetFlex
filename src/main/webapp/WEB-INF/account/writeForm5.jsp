<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<style type="text/css">

#personalInfo{
	background-color: gray;
}
</style>
</head>


<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
  <a href="../../index.jsp" class="writeForm0_headerLoginBtn">로그아웃</a>
</header>

<body>
<form method="post" action="processUserData">
<div>
	<h1>Netflex에 가입하신 것을 축하합니다.</h1>
	<li>Netflex 멤버십이 시작되었으며, 한 달 동안 무료로 제공됩니다. 2023년 11월 15일 이전에 멤버십을 해제하시면 요금이 청구되지 않습니다.</li>
	<li>무료 이용이 종료되기 전에 멤버십을 해지하시지 않으면 자동으로 연장됩니다.</li>
<table id="personalInfo">
	<div class="personalInfo">
		<tr>
			<td width="100" align ="center">이 름</td>
			<td><input type="text" id="name" name="name"  value="${name }" placeholder= "이름 입력">
				<div id="nameDiv"></div>
			</td>
		</tr>
		<tr>
			<td width="100" align ="center">나 이</td>
			<td><input type="text" id="age" name="age"  value="${age }" placeholder= "나이 입력">
				<div id="ageDiv"></div>
			</td>	
		</tr>
		
		<tr>
			<td><label>휴대폰</label></td>
				<td>
				<select name="tel1" id="tel1"  value="${tel1 }">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="019">019</option>
				</select>
				<input type="tel" id="tel2" value="${tel2 } name="tel2">	
				<input type="tel" id="tel3" value="${tel3 } name="tel3">
				<div id="phoneDiv"></div>
			</td>
		</tr>
	</div>
	<div id="agreementMessage">
		<input type="checkbox">
		<a>예, 영화와 TV 프로그램 및 특별 할인 행사에 대한 문자 메세지를 받겠습니다.</a>
	</div>
</table>
	<div>
		<button type="submit" id="nextPage">다음</button>
	</div>
</div>
	<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</form>


<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
$(document).ready(function(){
    $("#nextPage").click(function(event){
        var name = $("#name").val();
        var age = $("#age").val();
        var tel2 = $("#tel2").val();
        var tel3 = $("#tel3").val();
        var errorMessage = ""; // 에러 메시지

        if(name == ""){
            errorMessage = "이름을 입력하세요.";
        }

        else if(age == ""){
            errorMessage = "나이를 입력하세요.";
        }

        else if(tel2 == "" || tel3 == ""){
            errorMessage = "전화번호를 입력하세요.";
        }

        if (errorMessage !== "") {
            alert(errorMessage); // 혹은 다른 방식으로 에러 메시지를 표시하세요.
            event.preventDefault(); // 폼 제출 방지
        }
    });
});
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>