<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<style>

li{
	list-style: none;
}
</style>
</head>

<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
  <a href="../../index.jsp" class="writeForm0_headerLoginBtn">로그아웃</a>
</header>

<body>
<form method="post" action="">
	<div>
		<h1>모바일 통신사 결제 정보 등록</h1>
		<div>
		<img src="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KT.png" alt="KT" class="logoIcon KT default-ltr-cache-kg1rox e18ygst00" srcset="https://assets.nflxext.com/siteui/acquisition/payment/ffe/paymentpicker/KT@2x.png 2x" data-uia="logoIcon-KT">
		</div>
		
		<div class="phoneNumber">
			<ul>
				<li>
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