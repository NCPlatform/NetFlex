<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.center-table {
    display: flex;
    justify-content: center;
    align-items: center;
}

.center-table table {
    text-align: center;
}
.registration {
	text-decoration: none;
	color: blue;
}

.registration:hover {
	text-decoration: underline;
	cursor: pointer;
	color: blue;
}

header {
	display:flex;
	justify-content: space-between;
}
#writeForm0_headerLogo{
	width: 250px;
	height: 150px;
}
#writeForm0_headerLoginBtn{
	width: 100px;
	height: 30px;
}
#terms_agreed{
	 
}
h1{
	text-align: center;
}
h2{
	text-align: center;
}
h3{
	text-align: center;
}
tr{
	text-align: center;
}

</style>
</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그인</button>
</header>
<body>
<form style="text-align: center;" method="post" id="termsForm"  action="writeForm2">
<div>
<table style="margin: auto;">
1/3단계<br>
	<h1>비밀번호를 설정해 멤버십을 시작하세요.</h1>
	<h2>몇 단계만 더 거치면 넷플릭스 가입 완료!</h2>
	<h2>복잡한 단계는 모두 없앴습니다.</h2>

		<tr>
		
				<input type="text" placeholder="이메일 주소" name="email" id="email"  style="width:300px; height:50px;">
			</td>
		
			<td>
				<input type="password" placeholder="비밀번호를 추가하세요" id="password"  style="width:300px; height:50px;">
			</td>
			
		</tr>
	
	</table>
</div>
<div class="center-table">
<table>
        <label>
            <input type="checkbox" name="terms_agreed1" required>
            <p>예, 저는 <span class="registration" onclick="registration1()">전자상거래(인터넷사이버몰)</span> 표준약관에 동의합니다.</p><br><br>
	
	     <input type="checkbox" name="terms_agreed2" required>
            <p>예, 저는 <span class="registration" onclick="registration2()">개인정보 처리방침에 </span> 따른 개인정보 수집 및 활용에 동의합니다.</p>
        </label>
        
</table>
</div>
	<div>
        <input type="button" id="continueBtn" value="동의하고 계속" onclick="submitForm()">
	</div>
</form>

<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>
function submitForm() {
    var email = $("#email").val();
    var password = $("#password").val();

    if (email == "") {
        alert("이메일을 올바르게 입력하세요.");
        return false;
    }

    if (password == "") {
        alert("비밀번호를 입력하세요.");
        return false;
    }

    var termsAgreed1 = $("input[name='terms_agreed1']").is(":checked");
    var termsAgreed2 = $("input[name='terms_agreed2']").is(":checked");

    if (!termsAgreed1 || !termsAgreed2) {
        alert("약관에 동의해주세요.");
        return false;
    }

    // form을 submit
    document.getElementById("termsForm").submit();
}

</script>
</body>
</html>