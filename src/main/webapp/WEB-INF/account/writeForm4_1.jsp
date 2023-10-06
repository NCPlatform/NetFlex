<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
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
li{
	list-style: none;
}
</style>
</head>

<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그아웃</button>
</header>

<body>
<form method="post">
	<div>
		<h1>신용카드나 체크카드 등록</h1>
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
			
			<div class="creaditCard">
				<ul>
					<li>
						<input type="text" id="cardNumber" placeholder="카드번호" name="cardNumber">
					</li>
				</ul>
				<ul>
					<li>
						<input type="text" id="expireDate" placeholder="유효기간" name="expireDate">
					</li>
				</ul>
				<ul>
					<li>
						<input type="text" id="name" placeholder="이름" name="name">
					</li>
				</ul>
				<ul>
					<li>
						<input type="text" id="birth" placeholder="생년월일" name="birth">
					</li>
				</ul>
			</div>
			
			<div class="orderInfo">
				<div class="orderType">
					
				</div>
				<button type="button" class="orderChangeBtn">변경</button> 
			</div>
			
			<div>
				<input type="checkbox" id="termsOfAllCheck" class="selectAll" name="termsOfAllCheck" value="termsOfAllCheck">
				<label for="termsOfAllCheck">19세 이상이며, 아래의 약관에 모두 동의합니다.</label><br>
				
				<ul>
					<li>
						<input type="checkbox" id="termsOfUse" class="checkBox" name="termsOfUse" value="termsOfUse">
						<label for="termsOfUse">
							<span>
							Netflex<a href="termsOfUse">이용약관</a> 및 <a href="registration5">개인정보 처리방침</a>에 동의합니다.<br>
							(<a href="registration3">상세정보</a>)
							</span>
						</label>
					</li>
				</ul>
				<ul>
					<li>
						<input type="checkbox" id="agreement1" class="checkBox" name="agreement1" value="agreement1">
						<label for="agreement1">
							<span>
							본인의 개인 정보를 제3자에 제공하는 데에 동의합니다.
							</span>
						</label>
					</li>
				</ul>
				<ul>
					<li>
						<input type="checkbox" id="agreement2" class="checkBox" name="agreement2" value="agreement2">
						<label for="agreement2">
							<span>
							본인의 개인 정보가 해외로 이전되는 데에 동의합니다.
							</span>
						</label>
					</li>
				</ul>
				<ul>
					<li>
						<input type="checkbox" id="agreement3" class="checkBox" name="agreement3" value="agreement3">
						<label for="agreement3">
							<span>
							본인의 개인 정보를 <a href="registration4">결제 서비스업체</a>에 제공하는 데에 동의합니다.
							</span>
						</label>
					</li>
				</ul>
				<ul>
					<li>
						<input type="checkbox" id="agreement4" class="checkBox" name="agreement4" value="agreement4">
						<label for="agreement4">
							<span>
							멤버십을 해지하지 않으면 Netflex 멤버십이 자동으로 계속되며, 멤버십 요금(현 17,000원)이 등록한 결제 수단으로 매월 청구됩니다. 멤버십은 www.netflex.com의 '계정' 페이지에서 언제든지 해지할 수 있습니다. 이 경우 결제 주기가 종료될 때 멤버십이 해지되며, 잔여 기간 동안은 서비스를 계속 이용할 수 있습니다. 단, 결제일로부터 7일 이내에 멤버십이 즉시 종료되도록 해지하고 해당 계정을 통해 Netflex 콘텐츠를 이용하지 않은 경우, 해당 결제 주기에 청구된 멤버십 요금을 전액 환불 요청할 수 있습니다.
							</span>
						</label>
					</li>
				</ul>
			</div>
			<div class="submitBtn">
				<button type="submit">유료 멤버십 시작</button>
			</div>
	</div>
	<input type="hidden" id="email" name="email" value="${email }">
	<input type="hidden" id="password" name="password" value="${password }">
	<input type="hidden" id="level" name="level" value="${level }">
	<input type="hidden" id="price" name="price" value="${price }">
</form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
        $(document).ready(function() {
            $('.checkBox').change(function() {
                if ($('.checkBox:checked').length == $('.checkBox').length) {
                    $('#termsOfAllCheck').prop('checked', true);
                } else {
                    $('#termsOfAllCheck').prop('checked', false);
                }
            });

            $('.selectAll').change(function() {
                $('.checkBox').prop('checked', $(this).prop('checked'));
            });
        });
    </script>
    
    
</body>
</html>