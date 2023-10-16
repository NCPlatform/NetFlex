<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
	.noti{
		font-size: 0.8em;
	}
</style>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
	<div class="container pt-5">
		
		<jsp:include page="/WEB-INF/Account/nav.jsp" />
		
		<h1 class="mt-5">이메일 인증</h1>
		<form>
			<div>
				<label for="email" class="form-label">이메일 인증</label>
				<div class="input-group">
					<input type = 'email' name = 'email' id = 'email' value="${ email }"  class="form-control">
					<button type = 'button' id = 'btn' class="btn btn-dark">인증하기</button>
				</div>
				<div id = 'notify' class = 'noti form-text'></div>
				
			</div>
			<div>
				<label for="inputEmail" class="form-label">인증번호 입력</label>
				<div class="input-group">
					<input type = 'text' disabled name = 'verif' id = 'verif' class="form-control">
					<button type = 'button' id = 'verifbtn' class="btn btn-dark">인증확인</button>
				</div>
				<div id = 'timer' class="mt-3 form-text"></div>
			</div>
		</form>
	</div>
	<script type = "text/javascript" src = "http://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
	<script>
		$('#btn').click(function () {
		   
			var email = $('#email').val();
			
		    $.ajax({
		 		type: 'post',
		 		url : '/NetFlex/account/sendEmail',	//링크 완성해 주세요~
		 		data: 'email='+email,
		 		dataType: 'text', 
		 		
		 		success: function(data){
		 			 $('#notify').html("<span style='color: gray;'>인증번호가 전송되었습니다. <br>메일을 받지 못하신 경우 이메일이 올바르게 입력되었는지 확인해 주세요.</span>");
		 		    $('#verif').removeAttr("disabled");
		 	
		 		    var time = 180; // 3분 (180초)
		 		    var min;
		 		    var sec;
		 	
		 		    var timer = setInterval(function () {
		 		        min = Math.floor(time / 60);
		 		        sec = time % 60;
		 	
		 		        // 시간을 "분:초" 형식으로 표시하고 남은 시간을 업데이트
		 		        $('#timer').html('<span class="noti" style="color: gray;">' + (min < 10 ? "0" + min : min) + ":" + (sec < 10 ? "0" + sec : sec) + '</span>');
		 		        
		 		        if (time <= 0) {
		 		            clearInterval(timer); // 타이머 종료
		 		            // 시간이 다 되면 원하는 동작을 수행
		 		            // 예를 들어, 타이머가 종료되면 다른 동작을 수행하거나 메시지를 표시할 수 있습니다.
		 		        } else {
		 		            time--;
		 		        }
		 		    }, 1000); // 1초마다 업데이트
		 			
		 		}, //success
					error: function(e){
	 			console.log(e) }
	 	
	 	
	 	}); // $.ajax
		    
		});
		
		$('#verifbtn').click(function(){
			var verif = $('#verif').val();
			if($('#verif').val()==null){
				$('#certification').html("<span style = 'color:red;'>인증번호를 입력하세요.</span>")
			}
			 $.ajax({
			 		type: 'post',
			 		url : '/NetFlex/account/verifyEmail', //링크 완성해 주세요~
			 		data: 'verif='+verif,
			 		dataType: 'text', 
			 		
			 		success: function(data){
			 			
			 			
			 			if(data == "yes"){
			 				Swal.fire({
		 					  title: "인증 성공",
		 				      text: "이메일 인증을 성공했습니다.",
		 				      confirmButtonColor: '#3085d6',
		 				      confirmButtonText: '확인',
		 				      reverseButtons: true, // 버튼 순서 거꾸로
		 				      
		 				    }).then((result) => {
		 				      if (result.isConfirmed) {
		 				      	location.href="/NetFlex/account/writeForm1"
		 				      }
		 				    })
					 		   
			 			}else if(data == "no"){
			 				Swal.fire({
			 					  title: "인증 실패",
			 				      text: "다시 입력해 주세요."
		 				    })
						 		
			 			}else{
			 				Swal.fire({
			 					  title: "인증 실패",
			 				      text: "다시 입력해 주세요."
		 				    })	
			 			}
			 	
			 		}, //success
						error: function(e){
		 			console.log(e) }
		 	}); // $.ajax
		})
	</script>
</body>
</html>