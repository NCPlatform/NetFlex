<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style type="text/css">
header {
	display:flex;
	justify-content: space-between;
}
form {
  display: flex;
  justify-content: center;
  align-items: center;
}
#writeForm0_headerLogo{
	width: 250px;
	height: 150px;
}
#writeForm0_headerLoginBtn{
	width: 100px;
	height: 30px;
}
.creditCard, .naverPay, .phonePay {
  display: flex;
  flex-direction: column;
  margin-bottom: 10px; /* 버튼 사이에 간격을 추가합니다. */
  position: relative;
  width: 600px;
  font-size: 15px;
  padding: 15px;
}

.creditCard img, .naverPay img, .phonePay img {
  width: 27px; /* 이미지 크기를 조정합니다. */
  height: 27px;
  margin: 10px 0px 10px 0px;
}

.arrow {
  position: absolute;
  right: 0;
  bottom: 0;
  transform: translate(-50%, -50%);
}
</style>
</head>

<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그아웃</button>
</header>

<body>
<form>
<table cellpadding ="7" width="500" style="margin: auto;">
	<tr>
		<td>
			<h2>결제 방법 선택</h2>
			<li>결제 정보는 암호화되며, 결제 방법은 언제든지 변경할 수 있습니다.</li>
			<li>안심하고 즐기세요.</li>
			<li>해지는 온라인으로 간편하게.</li>
		</td>
	</tr>
</table>
</form>
<form method="post">
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
</div>
</form>

<script>
        document.getElementById('creditCard').addEventListener('click', function() {
            // 페이지 이동
            window.location.href = 'writeForm4_1';
        });
</script>

<script>
        document.getElementById('naverPay').addEventListener('click', function() {
            // 페이지 이동
            window.location.href = 'writeForm4_2';
        });
</script>

<script>
        document.getElementById('phonePay').addEventListener('click', function() {
            // 페이지 이동
            window.location.href = 'writeForm4_3';
        });
</script>

</body>
</html>