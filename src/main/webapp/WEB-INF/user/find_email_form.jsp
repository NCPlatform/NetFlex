<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap');

    * {
        font-family: 'Noto Sans KR', sans-serif;
    }

    body {
        background-color: #000000;
        background-image: url("../asset/img/findBack.jpg");
    }

    div {
        margin-top: 30;
        margin-left: 30%;
        width: 300px;
        background-color: #EEEFF1;
        border-radius: 5px;
        text-align: center;
        padding: 150px;
    }

    input {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        border-radius: 5px;
        border: none;
    }
    
    button {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        border-radius: 5px;
        border: none;
    }

    .in {
        margin-bottom: 10px;
    }

    .btn {
        background-color: #1BBC9B;
        margin-bottom: 30px;
        color: white;
    }

    a {
        text-decoration: none;
        color: #9B9B9B;
        font-size: 12px;
    }
    
    p{
    	color: #b00b3c;
    	font-size: 30px;
    }
    
    #nameCheck{
    	color: blue;   	
    }
    
    #ageCheck{
    	color: blue;   	
    }
    
    button:hover {
            border-color: red;
            color: white;
            box-shadow: 0 0.5em 0.5em -0.4em red;
            color: red;
        }
    
</style>
</head>

<body>
	<span>
		<a href="../index.jsp"; >
           	<img alt="넷플릭스홈" src="../asset/img/imagelogo.png" style="width: 199px; height: 51px;">                        
        </a>
	</span>
    <div>
    	<p data-uia="email-description">이메일 찾기</p>
    	<span id="nameCheck"></span>
    	<span id="ageCheck"></span>
        <form action="find_email" method="post">
            <input type="text" id="name" name="name" required placeholder="이름" class="in">
			<input type="text" id="age" name="age" required placeholder="나이" >
			<br>
			<br>
			<br>
			<br>
            <button type="button" id="emailFindBtn" class="btn btn-primary btn-lg" >찾기</button>
            <button type="button" class="btn btn-primary btn-lg" onclick="history.go(-1);">취소</button>  
        </form>		
    </div>
    
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>	
<!-- 유효성검사 -->
<script type="text/javascript">
$(function(){
	$('#emailFindBtn').click(function(){
		$('#name').empty();
		$('#age').empty();
		$('#nameCheck').empty();
		$('#ageCheck').empty();
		
		if($('#name').val() == ''){
			$('#nameCheck').text('이름을 올바르게 입력하세요!');
			$('#name').focus();
			
		}else if($('#age').val() == ''){
			$('#ageCheck').text('나이를 숫자형태로 입력하세요!');
			$('#age').focus();
			
		} else{
			$.ajax({
				type: 'post',
				url:	'/NetFlex/user/find_email',
				data:	'name=' + $('#name').val() + '&age=' + $('#age').val() ,
				dataType: 'text', 
				success: function(data){
					if(data != ""){
						alert("회원님의 이메일: " + data);
					
						
					}else if(data == ""){
						alert("존재하지 않는 계정입니다. 이름과 나이를 확인해주세요");
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