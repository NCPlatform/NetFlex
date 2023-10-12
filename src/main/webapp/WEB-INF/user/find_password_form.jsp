<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>비밀번호 찾기</title>
</head>
<body>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<form action="find_password" method="post">
				<div class="w3-center w3-large w3-margin-top">
					<h3>비밀번호 찾기</h3>
				</div>
				<div>
					<p>
						<label>이메일</label>
						<input class="w3-input" type="text" id="email" name="email" required>
					</p>
					<p>
						<label>이름</label>
						<input class="w3-input" type="text" id="name" name="name" required>
					</p>
					<p class="w3-center">
						<button type="button" id=pwdFindBtn class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">find</button>
						<button type="button" onclick="history.go(-1);" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-margin-bottom w3-round">Cancel</button>
					</p>
				</div>
			</form>
		</div>
	</div>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>	
<!-- 유효성검사 -->
<script type="text/javascript">
$(function(){
	$('#pwdFindBtn').click(function(){
		$('#email').empty();
		$('#name').empty();
		
		if($('#email').val() == ''){
			$('#email').text('정확한 이메일주소를 입력하세요.');
			$('email').focus();
			
		}else if($('#name').val() == ''){
			$('#name').text('정확한 이름을 입력하세요.');
			$('name').focus();
			
		} else{
			$.ajax({
				type: 'post',
				url:	'/NetFlex/user/find_password',
				data:	'email=' + $('#email').val() + '&name=' + $('#name').val() ,
				dataType: 'text', 
				success: function(data){
					if(data != ""){
						alert("회원님의 비밀번호: " + data);
					
						
					}else if(data == ""){
						alert("존재하지 않는 계정입니다. 이메일과 이름을 확인해주세요");
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