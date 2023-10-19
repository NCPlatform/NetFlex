<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="origin-trial" data-feature="EME Extension - Policy Check" data-expires="2018-11-26" content="Aob+++752GiUzm1RNSIkM9TINnQDxTlxz02v8hFJK/uGO2hmXnJqH8c/ZpI05b2nLsHDhGO3Ce2zXJUFQmO7jA4AAAB1eyJvcmlnaW4iOiJodHRwczovL25ldGZsaXguY29tOjQ0MyIsImZlYXR1cmUiOiJFbmNyeXB0ZWRNZWRpYUhkY3BQb2xpY3lDaGVjayIsImV4cGlyeSI6MTU0MzI0MzQyNCwiaXNTdWJkb21haW4iOnRydWV9"/>
<title>Netflix</title>
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0"/>
<link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/core/error-page.b122c37502204303115a.css" data-uia="botLink"/>
<link type="text/css" rel="stylesheet" data-uia="botLink"/>
<link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/login/loginBase.6bfea672aa4513a241d1.css" data-uia="botLink"/>
<link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/pages/login/Login.ab4b7e554f2e5f4ca33f.css" data-uia="botLink"/>
<link type="text/css" rel="stylesheet" href="https://assets.nflxext.com/web/ffe/wp/less/common/koreanLineBreak.79eaf7e509ee07919e31.css" data-uia="botLink"/>

<style>
#idDiv{
color:red;
 	}
#pwdDiv{
color:red;
 	}
</style>    
</head>
<body>
     <div id="appMountPoint">
         <div class="login-wrapper hybrid-login-wrapper">
             
             <div class="nfHeader login-header signupBasicHeader">
                <a href="../"; >
                <img alt="넷플릭스홈" src="/NetFlex/asset/image/netflexIcon.png" style="width: 199px">                        
                 </a>
             </div>
             <div class="login-body">
                <div>
                 <div class="hybrid-login-form-main">
                     <h1 data-uia="login-page-title">로그인</h1>
                     
 <!-- 폼태그 -->         <form action="login" method="post">
                         <div data-uia="login-field+container" class="nfInput nfEmailPhoneInput login-input login-input-email">
                             <div class="nfInputPlacement">
                                 <div class="nfEmailPhoneControls">
                                     <label class="input_id" placeholder="">
          <!-- 로그인 인풋 -->             <input type="text" data-uia="login-field" name="email" class="id nfTextField" value="" tabindex="0" autoComplete="email" spellcheck="false" dir="" placeholder=""/>
                                         <label for="id_userLoginId" class="placeLabel">이메일 주소 또는 전화번호</label>
                                     </label>
                                     <div data-uia="phone-country-selector+container" class="ui-select-wrapper country-select">
                                         <a data-uia="phone-country-selector" href="#" class="ui-select-wrapper-link">
                                             <div class="ui-select-current" placeholder="{&quot;current_selected_country&quot;:&quot;KR&quot;}">
                                                 <span class="country-select-flag nf-flag nf-flag-kr"></span>
                                                 <span class="country-select-code">+
                                                 <!-- -->
                                                 82</span>
                                             </div>
                                         </a>
                                         <ul data-uia="phone-country-selector+option-list" class="ui-select-options ui-select-options-hidden flag-select-item-list">

                                             <li data-uia="option-KR" aria-label="82" class="flag-select-option ui-select-item ui-select-item-selected" placeholder="{&quot;id&quot;:&quot;KR&quot;,&quot;selected&quot;:true,&quot;highlighted&quot;:false}">
                                                 <a id="KR" tabindex="-1" class="ui-select-item-link clearfix">
                                                     <span class="country-select-flag nf-flag nf-flag-kr"></span>
                                                     <span id="" class="country-name" data-uia="">
                                                         대한민국 <em class="country-code">+82</em>
                                                     </span>
                                                 </a>
                                             </li>
                                         </ul>
                                     </div>
                                 </div>
                             </div>
     <!-- id유효성검사 --> <div id="idDiv"></div>
                         <div data-uia="password-field+container" class="nfInput nfPasswordInput login-input login-input-password">
                             <div class="nfInputPlacement">
                                 <div class="nfPasswordControls">
                                     <label class="input_id" placeholder="">
          <!-- 패스워드 인풋 -->            <input type="password" name="password" data-uia="password-field" class="pwd nfTextField password" value="" tabindex="0" autoComplete="password" spellcheck="false" dir="" placeholder=""/>
                                         <label for="id_password" class="placeLabel">비밀번호</label>
                                     </label>
                            			<!-- 비밀번호표시 생략 -->
                                 </div>
                             </div>
<!-- 비밀번호 유효성검사 --><div id="pwdDiv"></div>
                         </div>                        
<!-- 로그인 버튼 -->       <button type="button" class="btn login-button btn-submit btn-small" id="loginBtn" autoComplete="off" tabindex="0" data-uia="login-submit-button">로그인</button>
<!--네이버 로그인 -->
					<div>
						  <!-- 네이버 로그인 버튼 노출 영역 -->
						  <div id="naver_id_login"></div>
						  <!-- //네이버 로그인 버튼 노출 영역 -->	  					
					</div>
										
                    <div class="hybrid-login-form-help">
                        <div class="ui-binary-input login-remember-me">
                            <input type="checkbox" class="" name="rememberMe" id="bxid_rememberMe_true" value="true" tabindex="0" data-uia="rememberMe" checked=""/>
                            <label for="bxid_rememberMe_true" data-uia="label+rememberMe">
                                <span class="login-remember-me-label-text">로그인 정보 저장</span>
                            </label>
                            <div class="helper"></div>
                        </div>                  
                        <a href="/NetFlex/account/loginHelp";>도움이 필요하신가요?</a>
                        
                    </div>
                 </div>
                 
                 </form>
                 <div class="hybrid-login-form-other">
                     <div class="login-signup-now" data-uia="login-signup-now">
<!-- 회원가입창으로 보내기 -->Netflix 회원이 아닌가요? <a class="" target="_self" href="/NetFlex/account">지금 가입하세요</a>
                         
                     </div>
                     <div class="recaptcha-terms-of-use" data-uia="recaptcha-terms-of-use">
                         <p>
                             <span>이 페이지는 Google reCAPTCHA의 보호를 받아 사용자가 로봇이 아님을 확인합니다.</span>
                             <button class="recaptcha-terms-of-use--link-button" data-uia="recaptcha-learn-more-button"></button><!-- 자세히알아보기 -->
                         </p>
                         <div class="recaptcha-terms-of-use--disclosure" data-uia="recaptcha-disclosure">
                             <span id="" data-uia="recaptcha-disclosure-text">
                                 Google reCAPTCHA가 수집하는 정보에는 Google <a href="https://policies.google.com/privacy" id="recaptcha-privacy-link" data-uia="recaptcha-privacy-link" target="_blank">개인정보처리방침</a>
                                 과 <a href="https://policies.google.com/terms" id="recaptcha-tos-link" data-uia="recaptcha-tos-link" target="_blank">서비스 약관</a>
                                 이 적용되며, 해당 정보는 reCAPTCHA 서비스 제공, 관리 및 개선과 일반적인 보안 유지에 사용됩니다(Google의 개인 맞춤 광고에 사용 안 함).
                             </span>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>                
 </div>
 
<!-- 네이버 스크립트 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
  	var naver_id_login = new naver_id_login("QcO9etsTOY_paY4jzadh", "http://localhost:8080/NetFlex/account/loginOk");
  										//developers.naver의 Client ID
  	var state = naver_id_login.getUniqState();
  	naver_id_login.setButton("white", 2,40);
  	naver_id_login.setDomain("http://localhost:8080/NetFlex/account/loginForm");//소셜로그인을 하는 주소
  	naver_id_login.setState(state);
  	naver_id_login.init_naver_id_login();

</script>
<!-- 유효성검사 -->
<script type="text/javascript">
$(function(){
	$('#loginBtn').click(function(){
		$('#idDiv').empty();
		$('#pwdDiv').empty();
		
		if($('.id').val() == ''){
			$('#idDiv').text('정확한 이메일 주소나 전화번호를 입력하세요.');
			$('.id').focus();
			
		}else if($('.pwd').val() == ''){
			$('#pwdDiv').text('비밀번호를 확인하여주세요. 4~60자 사이여야 합니다.');
			$('.pwd').focus();
			
		} else{
			
			$.ajax({
				type: 'post',
				url:	'/NetFlex/account/login',
				data:	'email=' + $('.id').val() + '&password=' + $('.password').val() ,
				dataType: 'text', 
				success: function(data){
					if(data == 1){
						alert("로그인을 성공했습니다.");
					location.href="/NetFlex"
						
					}else if(data == 0){
						alert("없는 계정입니다.");
					}
						
					
				}, 
				error: function(e){
					console.log(e);
					
				}
				
				
				
			}) 

		}
	});
});

</script> 
</body>
</html>