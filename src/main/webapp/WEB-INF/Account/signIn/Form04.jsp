<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />
<link rel="stylesheet" href="/NetFlex/asset/css/account/headerLogo2.css" type="text/css"/>
<link rel="stylesheet" href="/NetFlex/asset/css/account/writeForm4.css" type="text/css"/>
<div class="container">
	<jsp:include page="/WEB-INF/Account/nav.jsp" />
</div>

<div class="container">
<form>
	<table class="d-flex justify-content-center" cellpadding ="7" width="500" style="margin: auto; text-align: center;">
		<tr>
			<td>
				<span class="writeForm4-center1">
				<b>3/3단계</b>
				</span>
				
				<h2>결제 방법 선택</h2>
				<li>결제 정보는 암호화되며, 결제 방법은 언제든지 변경할 수 있습니다.</li>
				<li>안심하고 즐기세요.</li>
				<li>해지는 온라인으로 간편하게.</li>
			</td>
		</tr>
	</table>
</form>
<form method="post" id="form1" action="writeForm4_1">
<div>
	<button class="creditCard" type="button" id="creditCard">
		<div><span>체크카드 또는 신용카드</span></div>
			<div>
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/BC.png" alt="BC Card" class="logoIcon BC default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/BC@2x.png 2x" data-uia="logoIcon-BC">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Hana.png" alt="Hana Card" class="logoIcon Hana default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Hana@2x.png 2x" data-uia="logoIcon-Hana">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Hyundai.png" alt="Hyundai Card" class="logoIcon Hyundai default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Hyundai@2x.png 2x" data-uia="logoIcon-Hyundai">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KB.png" alt="KB Card" class="logoIcon KB default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KB@2x.png 2x" data-uia="logoIcon-KB">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Lotte.png" alt="Lotte Card" class="logoIcon Lotte default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Lotte@2x.png 2x" data-uia="logoIcon-Lotte">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/NH.png" alt="NH Card" class="logoIcon NH default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/NH@2x.png 2x" data-uia="logoIcon-NH">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Samsung.png" alt="Samsung Card" class="logoIcon Samsung default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Samsung@2x.png 2x" data-uia="logoIcon-Samsung">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Shinhan.png" alt="Shinhan Card" class="logoIcon Shinhan default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/Shinhan@2x.png 2x" data-uia="logoIcon-Shinhan">
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/UNIONPAY.png" alt="UnionPay" class="logoIcon UNIONPAY default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/UNIONPAY@2x.png 2x" data-uia="logoIcon-UNIONPAY">
			</div>
				<span class="arrow">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-mirrorinrtl="true" class="default-ltr-cache-4z3qvp e1svuwfo1" data-name="ChevronRight" aria-hidden="true">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5859 12L8.29303 19.2928L9.70725 20.7071L17.7072 12.7071C17.8948 12.5195 18.0001 12.2652 18.0001 12C18.0001 11.7347 17.8948 11.4804 17.7072 11.2928L9.70724 3.29285L8.29303 4.70706L15.5859 12Z" fill="currentColor">
					</path></svg>
				</span>
	</button>
	<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</div>
</form>
<form method="post" id="form2" action="writeForm4_2">
<div>
	<button class="naverPay" type="button" id="naverPay">
		<div><span>간편 결제</span></div>
			<div>
			<img src="https://up.wepick.kr/wp-content/uploads/2023/06/naver_pay.png" alt="naverPay" >
			</div>
				<span class="arrow">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-mirrorinrtl="true" class="default-ltr-cache-4z3qvp e1svuwfo1" data-name="ChevronRight" aria-hidden="true">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5859 12L8.29303 19.2928L9.70725 20.7071L17.7072 12.7071C17.8948 12.5195 18.0001 12.2652 18.0001 12C18.0001 11.7347 17.8948 11.4804 17.7072 11.2928L9.70724 3.29285L8.29303 4.70706L15.5859 12Z" fill="currentColor">
					</path></svg>
				</span>
	</button>
	<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</div>
</form>
<form method="post" id="form3" action="writeForm4_3">
<div>
	<button class="phonePay" type="button" id="phonePay">
		<div><span>통신사 요금에 통합하기</span></div>
			<div>
			<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KT.png" alt="KT" class="logoIcon KT default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KT@2x.png 2x" data-uia="logoIcon-KT">
			</div>
				<span class="arrow">
					<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-mirrorinrtl="true" class="default-ltr-cache-4z3qvp e1svuwfo1" data-name="ChevronRight" aria-hidden="true">
					<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5859 12L8.29303 19.2928L9.70725 20.7071L17.7072 12.7071C17.8948 12.5195 18.0001 12.2652 18.0001 12C18.0001 11.7347 17.8948 11.4804 17.7072 11.2928L9.70724 3.29285L8.29303 4.70706L15.5859 12Z" fill="currentColor">
					</path></svg>
				</span>
	</button>
	<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</div>
</form>
<form>
	<div>
		<button class="testPay" type="button" id="test" onclick="location.href='/NetFlex/account/writeForm5'">
			<div><span>결제 테스트</span></div>
			<span class="arrow">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-mirrorinrtl="true" class="default-ltr-cache-4z3qvp e1svuwfo1" data-name="ChevronRight" aria-hidden="true">
				<path fill-rule="evenodd" clip-rule="evenodd" d="M15.5859 12L8.29303 19.2928L9.70725 20.7071L17.7072 12.7071C17.8948 12.5195 18.0001 12.2652 18.0001 12C18.0001 11.7347 17.8948 11.4804 17.7072 11.2928L9.70724 3.29285L8.29303 4.70706L15.5859 12Z" fill="currentColor">
				</path></svg>
			</span>
		</button>
	</div>
</form>
	</div>

<jsp:include page="/WEB-INF/Account/footer.jsp" />
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />