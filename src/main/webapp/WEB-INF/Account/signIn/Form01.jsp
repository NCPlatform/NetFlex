<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />
<link rel="stylesheet" href="/NetFlex/asset/css/account/headerLogo2.css" type="text/css"/>
<link rel="stylesheet" href="/NetFlex/asset/css/account/writeForm1.css" type="text/css"/>

<div class="container">
	<jsp:include page="/WEB-INF/Account/nav.jsp" />
</div>

<div class="writeForm1-center container">
<form style="text-align: left;" method="post" id="writeForm1" class="termsForm d-flex justify-content-center" action="/NetFlex/account/writeForm2">
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
				            <p>예, 저는 <span class="registration" onclick="registration1()" data-bs-toggle="modal" data-bs-target="#registration1">전자상거래(인터넷사이버몰)</span> 표준약관에 동의합니다.</p><br><br>
					
					     <input type="checkbox" name="terms_agreed2" required>
				            <p>예, 저는 <span class="registration" onclick="registration2()" data-bs-toggle="modal" data-bs-target="#registration2">개인정보 처리방침에 </span> 따른 개인정보 수집 및 활용에 동의합니다.</p>
				        </label>
				</div>
				<div>
			        <input type="button" class="continueBtn" id="continueBtn" value="동의하고 계속">
				</div>
	        </td>
	        </tr>
	</table>
	</div>
</form>
</div>

<jsp:include page="/WEB-INF/Account/modal/registration1.jsp" />
<jsp:include page="/WEB-INF/Account/modal/registration2.jsp" />
<jsp:include page="/WEB-INF/Account/footer.jsp" />
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />