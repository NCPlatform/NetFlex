<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
</head>
<body>
<script type="text/javascript">
  var naver_id_login = new naver_id_login("2BVZpS8LeJiU8cRyQL8N", "http://localhost:8080/Self_NetFlix/user/loginOk");
  // 접근 토큰 값 출력
  //$('body').append('<h4>접속토큰:'+naver_id_login.oauthParams.access_token+'</h4>');
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    const email = naver_id_login.getProfileData('email');
    const name = naver_id_login.getProfileData('name');
    const age = naver_id_login.getProfileData('age');
    const phone = naver_id_login.getProfileData('mobile');
	
	$.ajax({
		type: 'post',
		url: '/NetFlex/account/checkEmail',
		data: 'email=' + email,
		dataType: 'text',
		success: function(data){
			if(data == 0){
				$.ajax({
					type: 'post',
					url: '/NetFlex/account/socialSignin',
					data: 'email=' + email + "&name=" + name + "&age=" + age,
					dataType: 'text',
					success: function(data){
					},
					error: function(e){
						console.log(e);
					}
				});
			    location.href="/NetFlex/account"
				
			}else if(data == 1){
				$.ajax({
					type: 'post',
					url: '/NetFlex/account/socialLogin',
					data: 'email=' + email,
					dataType: 'text',
					success: function(data){
					},
					error: function(e){
					}
				});
				Swal.fire(
					"소셜 로그인을 성공했습니다"
				).then((result)=> {
			    	location.href="/NetFlex";
			    });
			}
		},
		error: function(e){
			Swal.fire('소셜 로그인을 실패했습니다.');
			console.log(e);
			return false;
		}
	});
    
    
  }
</script>