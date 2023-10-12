<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<link rel="stylesheet" href="../asset/css/writeForm2.css">

</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" class="writeForm0_headerLogo">
   <a href="../../index.jsp" class="writeForm0_headerLoginBtn">로그아웃</a>
</header>
<br><br><br><br><br>
<body style="word-break: keep-all; padding-bottom: 95px;">
<div class="container">
<form id = "writeForm2" class="d-flex justify-content-center" method="post" action="writeForm3" style="text-align: center;">
<table class="writeForm2-center" style="margin: auto;">
<tr>
	<td>
		<span class="writeForm2-center1">
		2/3단계
		</span>
		
		<h2>원하는 멤버십을 선택하세요.</h2>
		<ul class="checkMarkGroup">
		<li>
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
		<span class="checkMarkGroup1">
		無약정, 無위약금. 해지도 쿨하게 언제든지
		</span>
		</li>
		<li>
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
		<span class="checkMarkGroup1">
		하나의 요금으로 즐기는 끝없는 콘텐츠의 세계.
		</span>
		</li>
		<li>
		<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="checkmark-group--icon default-ltr-cache-4z3qvp e1svuwfo1" data-name="Checkmark" aria-hidden="true"><path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path></svg>
			<path fill-rule="evenodd" clip-rule="evenodd" d="M21.2928 4.29285L22.7071 5.70706L8.70706 19.7071C8.51952 19.8946 8.26517 20 7.99995 20C7.73474 20 7.48038 19.8946 7.29285 19.7071L0.292847 12.7071L1.70706 11.2928L7.99995 17.5857L21.2928 4.29285Z" fill="currentColor"></path>
		<span class="checkMarkGroup1">
		모든 디바이스에서 무제한 시청.
		</span>
		</li>
		</ul>
		
		
		<input type="hidden" id="email" name="email" value="${email }">
		<input type="hidden" id="password" name="password" value="${password }">
		
		<input type="button" class="continueBtn" value="다음" onclick="membershipChoice()">


	</td>
				
</tr>	
</table>

</form>
</div>

<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

 <script>
        function membershipChoice() {
        	  document.getElementById('writeForm2').submit(); // 이동할 주소를 여기에 입력하세요.
        }
 </script>
 
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>