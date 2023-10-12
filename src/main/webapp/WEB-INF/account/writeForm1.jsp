<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<link rel="stylesheet" href="../asset/css/writeForm1.css">
</head>

<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
  <a href="loginForm" class="writeForm0_headerLoginBtn">로그인</a>
</header>
<br><br>
<body>
<div class="writeForm1-center container">
<form style="text-align: left;" method="post" id="termsForm" class="termsForm d-flex justify-content-center" action="writeForm2">
<div class="writeForm1-center1">
<table cellpadding ="7" width="500" style="margin: auto;">
	<tr>
		<td>
	<span class="writeForm1-center2">
	1/3단계
	</span>
	<h1 class="writeForm1-center3">
	<span>
	"회원님 반갑습니다."
	<br>
	"넷플릭스 가입 절차는 간단합니다."
	</span>
	</h1>
	<div class="writeForm1-center4">
		<span>비밀번호를 입력하시면 바로 시청하실 수 있습니다.</span>
	</div>
		
			<div class="form-floating mb-3">
			  <input type="email" class="form-control" id="floatingInput" name="email" value="${email }"  placeholder="이메일 주소" readonly>
			  <label for="floatingInput">이메일 주소</label>
			</div>
			
			<div class="form-floating">
			  <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="비밀번호를 추가하세요">
			  <label for="floatingPassword">비밀번호를 추가하세요</label>
			</div>	
			
			
		
	
	
</div>
<div class="center-table">

        <label>
            <input type="checkbox" name="terms_agreed1" required>
            <p>예, 저는 <span class="registration" onclick="registration1()">전자상거래(인터넷사이버몰)</span> 표준약관에 동의합니다.</p><br><br>
	
	     <input type="checkbox" name="terms_agreed2" required>
            <p>예, 저는 <span class="registration" onclick="registration2()">개인정보 처리방침에 </span> 따른 개인정보 수집 및 활용에 동의합니다.</p>
        </label>
</div>
	<div>
        <input type="button" class="continueBtn" id="continueBtn" value="동의하고 계속" onclick="submitForm()">
	</div>
        </td>
        </tr>
</table>
</form>
</div>
<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>
<script>

function registration1() {
    window.location.href = "registration1"; // registration1 페이지로 이동
}

function registration2() {
    window.location.href = "registration2"; // registration2 페이지로 이동
}

function submitForm() {
    var email = $("#floatingInput").val();
    var password = $("#floatingPassword").val();

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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>