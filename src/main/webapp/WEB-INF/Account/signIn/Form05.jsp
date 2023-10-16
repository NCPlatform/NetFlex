<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />
<link rel="stylesheet" href="/NetFlex/asset/css/account/headerLogo2.css" type="text/css"/>
<link rel="stylesheet" href="/NetFlex/asset/css/account/writeForm5.css" type="text/css"/>
<div class="container">
	<jsp:include page="/WEB-INF/Account/nav.jsp" />
</div>

<div class="container">
	<form method="post" class="d-flex justify-content-center">
		<div class="writeForm5">
			<div class="writeForm5-center">
				<h1>Netflex에 가입하신 것을 축하합니다.</h1>
				<li>Netflex 멤버십이 시작되었으며, 한 달 동안 무료로 제공됩니다. </li>
				<li>2023년 11월 15일 이전에 멤버십을 해제하시면 요금이 청구되지 않습니다.</li>
				<li>무료 이용이 종료되기 전에 멤버십을 해지하시지 않으면 자동으로 연장됩니다.</li>
			</div>
			
			<div class="writeForm5-center2">
				<tr>
					<div class="form-floating mb-3">
						<input type="text" class="form-control border border-secondary-subtle" id="email" name="email"  value="${email }" placeholder= "이메일 입력" readonly>
						<label for="floatingInput">이메일</label>
					</div>
					<div class="form-floating mb-3">
						<input type="password" class="form-control border border-secondary-subtle" id="password" name="password"  value="${password }" placeholder= "비밀번호 입력" readonly>
						<label for="floatingInput">비밀번호</label>
					</div>
					<div class="form-floating mb-3">
						<input type="text" class="form-control border border-secondary-subtle" id="name" name="name"  value="${name }" placeholder= "이름 입력">
						<label for="floatingInput">이름 입력</label>
					</div>
					
					<div class="form-floating mb-3">
					<input type="text" class="form-control border border-secondary-subtle" id="age" name="age"  value="${age }" placeholder= "나이 입력">
					<label for="floatingInput">나이 입력</label>
					</div>
				</tr>
			</div>
						
			<div class="row mb-3">
				<div class="col form-floating mb-3">
					<select class="form-select phoneNumber border border-secondary-subtle" name="tel1" id="tel1"  value="${tel1 }">
						<option value="010">010</option>
						<option value="011">011</option>
						<option value="016">016</option>
						<option value="019">019</option>
					</select>
					<label for="floatingSelect">앞자리 선택</label>
					<input type="hidden" id="seqMembership" value="${ seqMembership }" name="seqMembership">	
				</div>
				
				<div class="col form-floating mb-3 pe-0 ps-0">
					<input type="tel" class="form-control phoneNumber1 border border-secondary-subtle" id="tel2" value="${tel2 }" name="tel2" placeholder="가운데 번호">
					<label for="floatingInput">가운데 번호</label>
				</div>
				
				<div class="col form-floating mb-3 ps-0">
					<input type="tel" class="form-control phoneNumber1 border border-secondary-subtle" id="tel3" value="${tel3 }" name="tel3" placeholder="마지막 번호">
					<label for="floatingInput">마지막 번호</label>
				</div>
			
			</div>
			<div class="writeForm5-center3" id="agreementMessage">
				<input type="checkbox">
				<a>예, 영화와 TV 프로그램 및 특별 할인 행사에 대한 문자 메세지를 받겠습니다.</a>
			</div>
			<div class="d-grid gap-2 col">
				<button type="button" class="continueBtn" id="nextPage">다음</button>
			</div>
		</div>
	</form>
</div>


<jsp:include page="/WEB-INF/Account/footer.jsp" />
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />