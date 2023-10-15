$('#start').click(function(){
	if($('input[name=email]').val() == null || $('input[name=email]').val() == ""){
		Swal.fire('이메일을 입력해주세요.');
		return false;
	}else if(!$('input[name=email]').val().includes("@")){
		Swal.fire('올바른 이메일 형식이 아닙니다.');
		return false;
	}
	
	$.ajax({
		type: 'post',
		url: '/NetFlex/account/checkEmail',
		data: 'email=' + $('input[name=email]').val(),
		dataType: 'text',
		success: function(data){
			if(data == 0){
				Swal.fire('사용 가능한 이메일입니다.');
				$('#writeForm0').submit();
				
			}else if(data == 1){
				Swal.fire('사용중인 이메일입니다.');
				return false;
			}
		},
		error: function(e){
			Swal.fire('회원가입에 실패했습니다.');
			console.log(e);
			return false;
		}
	});
	return false;
});

$('#continueBtn').click(function(){

    if($('input[name=email]').val() == null || $('input[name=email]').val() == "") {
        Swal.fire('이메일을 입력해주세요.');
        return false;
    }

    if($('input[name=password]').val() == null || $('input[name=password]').val() == "") {
        Swal.fire('비밀번호을 입력해주세요.');
        return false;
    }

	var termsAgreed1 = $("input[name='terms_agreed1']").is(":checked");
    var termsAgreed2 = $("input[name='terms_agreed2']").is(":checked");

    if (!termsAgreed1 || !termsAgreed2) {
        Swal.fire('약관에 동의해 주세요.');
        return false;
    }
    $('#writeForm1').submit();
});

$("#payment").click(function(){
	if($('#levelInput').val() == null || $('#levelInput').val() == ""){
		Swal.fire('사용할 멤버십을 선택해주세요');
		return false;
	}
	$('#writeForm3').submit();
});

$("#nextPage").click(function(){

	if($('#name').val() == null || $('#name').val() == ""){
		Swal.fire('이름을 입력해주세요');
		return false;
	}
	if($('#age').val() == null || $('#age').val() == ""){
		Swal.fire('나이를 입력해주세요');
		return false;
	}
	if($('#tel2').val() == null || $('#tel2').val() == ""||$('#tel3').val() == null || $('#tel3').val() == ""){
		Swal.fire('휴대폰 번호를 입력해주세요');
		return false;
	}
	
	var email = $('#email').val() ;
	var password = $('#password').val() ;
	var name = $('#name').val() ;
	var age = $('#age').val() ;
	var seqMembership = $('#seqMembership').val() ;
	var phone = $("select[name='tel1'] option:selected").text() + "-" + $('#tel2').val() + "-" + $('#tel3').val()  ;

	$('#phone').val(phone);
	
	
	$.ajax({
		type: 'post',
		url: '/NetFlex/account/signin',
		data: 'email=' + email + "&password=" + password + "&name=" + name + "&age=" + age + "&phone=" + phone + "&seqMembership=" + seqMembership,
		dataType: 'text',
		success: function(data){
			Swal.fire({
            text: "회원가입에 성공했습니다.",
            confirmButtonColor: '#3085d6',
            confirmButtonText: '확인',
            reverseButtons: true, // 버튼 순서 거꾸로
            
          }).then((result) => {
            if (result.isConfirmed) {
               location.href="/NetFlex/account/createNickname"
            }
          })
		},
		error: function(e){
			Swal.fire('회원가입에 실패했습니다.');
			console.log(e);
		}
	});
	
	//$('#writeForm5').submit();
});

$("#nickname2, #nickname3, #nickname4").click(function(){

	var thisId = $(this).attr("id");
	
	if($('#nickname1').val() == null || $('#nickname1').val() == ""){
		$('#nickname1').focus();
		Swal.fire('첫번째 입력칸부터 채워주세요.');
		return false;
	}else if(thisId == "nickname3"){
	
		if($('#nickname2').val() == null || $('#nickname2').val() == ""){
			$('#nickname2').focus();
			Swal.fire('두번째 입력칸부터 채워주세요.');
			return false;
		}else if(thisId == "nickname4"){
			if($('#nickname3').val() == null || $('#nickname3').val() == ""){
				$('#nickname3').focus();
				Swal.fire('세번째 입력칸부터 채워주세요.');
				return false;
			}
		}
	}
	
	$(this).parents().siblings('.genreTd').css("visibility","");
});

$("input:checkbox[name='genre1']").change(function(){
    if($("input:checkbox[name='genre1']").is(":checked")){
       	if($("input:checkbox[name='genre1']:checked").length > 3){
       		Swal.fire('선호 장르는 최대 3개 입력 가능합니다.');
       		$(this).prop("checked", false);
       	}
    }
});

$("input:checkbox[name='genre2']").change(function(){
    if($("input:checkbox[name='genre2']").is(":checked")){
       	if($("input:checkbox[name='genre2']:checked").length > 3){
       		Swal.fire('선호 장르는 최대 3개 입력 가능합니다.');
       		$(this).prop("checked", false);
       	}
    }
});

$("input:checkbox[name='genre3']").change(function(){
    if($("input:checkbox[name='genre3']").is(":checked")){
       	if($("input:checkbox[name='genre3']:checked").length > 3){
       		Swal.fire('선호 장르는 최대 3개 입력 가능합니다.');
       		$(this).prop("checked", false);
       	}
    }
});

$("input:checkbox[name='genre4']").change(function(){
    if($("input:checkbox[name='genre4']").is(":checked")){
       	if($("input:checkbox[name='genre4']:checked").length > 3){
       		Swal.fire('선호 장르는 최대 3개 입력 가능합니다.');
       		$(this).prop("checked", false);
       	}
    }
});

$("#finish").click(function(){
	
	var dataString = 'email=' + $('#email').val();

	if($('#nickname1').val() == null || $('#nickname1').val() == ""){
		Swal.fire('별칭을 한개 이상 작업해야 합니다. 입력해주세요');
		$('#nickname1').focus();
		return false;
	}else{
		if ($("input:checkbox[name='genre1']:checked").length < 1){ 
			Swal.fire('선호하는 장르코드를 1개 이상 입력해주세요.');
			return false;
		}
		dataString = dataString + '&nickname1=' + $('#nickname1').val();
		var cnt = 1;
		$("input:checkbox[name='genre1']").each(function (index) {
			if($(this).is(":checked")==true){
				dataString = dataString + '&genrecode1' + cnt + "=" + $(this).val();
				cnt++;
			}
		});
	}
	
	if($('#nickname2').val() == null || $('#nickname2').val() == ""){

	} else{
		if ($("input:checkbox[name='genre2']:checked").length < 1){ 
			Swal.fire('선호하는 장르코드를 1개 이상 입력해주세요.');
			return false;
		}
		dataString = dataString + '&nickname2=' + $('#nickname2').val();
		var cnt = 1;
		$("input:checkbox[name='genre2']").each(function (index) {
			if($(this).is(":checked")==true){
				dataString = dataString + '&genrecode2' + cnt + "=" + $(this).val();
				cnt++;
			}
		});
	}
	if($('#nickname3').val() == null || $('#nickname3').val() == ""){

	}else{
		if ($("input:checkbox[name='genre3']:checked").length < 1){ 
			Swal.fire('선호하는 장르코드를 1개 이상 입력해주세요.');
			return false;
		}
		dataString = dataString + '&nickname3=' + $('#nickname3').val();
		var cnt = 1;
		$("input:checkbox[name='genre3']").each(function (index) {
			if($(this).is(":checked")==true){
				dataString = dataString + '&genrecode3' + cnt + "=" + $(this).val();
				cnt++;
			}
		});
	}
	
	if($('#nickname4').val() == null || $('#nickname4').val() == ""){

	}else{
		if ($("input:checkbox[name='genre4']:checked").length < 1){ 
			Swal.fire('선호하는 장르코드를 1개 이상 입력해주세요.');
			return false;
		}
		dataString = dataString + '&nickname4=' + $('#nickname4').val();
		var cnt = 1;
		$("input:checkbox[name='genre4']").each(function (index) {
			if($(this).is(":checked")==true){
				dataString = dataString + '&genrecode4' + cnt + "=" + $(this).val();
				cnt++;
			}
		});
	}
	$.ajax({
		type: 'post',
		url: '/NetFlex/account/insertNickname',
		data:  dataString,
		dataType: 'text',
		success: function(data){
			Swal.fire({
			  title: "회원가입을 완료했습니다.",
		      text: "넷플렉스를 즐겨주세요.",
		      confirmButtonColor: '#3085d6',
		      confirmButtonText: '확인',
		      reverseButtons: true, // 버튼 순서 거꾸로
		      
		    }).then((result) => {
		      if (result.isConfirmed) {
		      	location.href="/NetFlex"
		      }
		    })
		},
		error: function(e){
			Swal.fire('회원가입에 실패했습니다.');
			console.log(e);
		}
	});
});

$(".creditCard, .phonePay, .naverPay").click(function(){
	Swal.fire({
		title: "준비중입니다",
		icon: 'error'
	});
});