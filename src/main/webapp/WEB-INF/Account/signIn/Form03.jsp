<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/Account/headDefault.jsp" />
<link rel="stylesheet" href="/NetFlex/asset/css/account/headerLogo2.css" type="text/css"/>
<link rel="stylesheet" href="/NetFlex/asset/css/account/writeForm3.css" type="text/css"/>
<div class="container">
	<jsp:include page="/WEB-INF/Account/nav.jsp" />
</div>

<div class="writeForm3">
	<table class="writeForm3-center">
		<tr>
			<td>
				<span class="writeForm3-center1">
				2/3단계
				</span>
				
				<h1>원하는 멤버십을 선택하세요.</h1><br>
				
				<li>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
				<span class="checkMarkGroup">
				TV, 컴퓨터, 스마트폰, 태블릿으로 마음껏 시청하세요.
				</span>
				</li>
				<li>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
				<span class="checkMarkGroup">
				취향에 꼭 맞는 콘텐츠를 추천해 드립니다.
				</span>
				</li>
				<li>
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
					<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
				<span class="checkMarkGroup">
				멤버십은 언제든지 변경 또는 해지 가능합니다.
				</span>
				</li>
			</td>
						
		</tr>	
	</table>
	
	<table class="writeForm3-center2" style="margin: auto;">
	
		<tr id="thead">
			<td></td>
		</tr>
		
		<tr id="tPrice">
			<td>월 요금</td>
		</tr>
		
		<tr id="tQuality">
			<td>영상 화질</td>
		</tr>
		
		<tr id="tResolution">
			<td>해상도</td>
		</tr>
	</table>
	
	<div style="text-align: center;">
		<button type="button" id="checkMembership" class="checkMembership" >모든 멤버쉽 확인하기</button>
	</div>
	<p>HD(720p), 풀 HD(1080p), UHD(4K), HDR 화질 제공 여부는 사용하는 인터넷 서비스와 디바이스의 성능에 따라 달라질 수 있습니다.
	 모든 콘텐츠가 모든 화질로 제공되지는 않습니다. 자세한 내용은 <span class="termsOfUse" onclick="termsOfUse()">이용 약관을</span> 확인하세요.</p>
	<p>함께 거주하는 사람들만 계정을 함께 이용할 수 있습니다.
	 프리미엄 멤버십은 동시접속 4명, 스탠다드 또는 광고형 스탠다드는 2명, 베이식은 1명까지 가능합니다.</p>
	<form  id = "writeForm3" method="post" action="writeForm4" >
		<input type="hidden" id="typeInput" name="type" value="">
		<input type="hidden" id="levelInput" name="level" value="">
		<input type="button" value="다음" id="payment">
	</form>
</div>	

<jsp:include page="/WEB-INF/Account/footer.jsp" />
<script src="/NetFlex/asset/js/account/membership.js"></script>
<jsp:include page="/WEB-INF/Account/footDefault.jsp" />