<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../asset/css/headerLogo2.css">
<style>

#naverPayLogo{
	width: 50px;
	height: 50px;
}
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
<form method="post" action="writeForm5">
	<div>
		<h1>NaverPay 결제 정보 등록</h1>
		<div>
		<img src="https://up.wepick.kr/wp-content/uploads/2023/06/naver_pay.png" id="naverPayLogo">
		</div>
		
		<div class="emailAddress">
			<ul>
				<li>
				
		<tr class="form-group-sm">
				<th><label>이메일</label></th>
				<td>
				<input type="text" name="email1" id="email1" style="width:200px;">
				
				<form:input path="memMail" 	cssClass="form-control input-sm" />
       			<form:errors path="memMail" />
				<button onclick="return false;" type="button" id="mailAuth">이메일 인증하기</button>
				</td>
				
		</tr>
		
				</li>
			</ul>
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
						멤버십을 해지하지 않으면 Netflex 멤버십이 자동으로 계속되며, 멤버십 요금 ${price}이 등록한 결제 수단으로 매월 청구됩니다. 멤버십은 www.netflex.com의 '계정' 페이지에서 언제든지 해지할 수 있습니다. 이 경우 결제 주기가 종료될 때 멤버십이 해지되며, 잔여 기간 동안은 서비스를 계속 이용할 수 있습니다. 단, 결제일로부터 7일 이내에 멤버십이 즉시 종료되도록 해지하고 해당 계정을 통해 Netflex 콘텐츠를 이용하지 않은 경우, 해당 결제 주기에 청구된 멤버십 요금을 전액 환불 요청할 수 있습니다.
						</span>
					</label>
				</li>
			</ul>
		</div>
		<div class="">
			<button type="button" id="submitBtn">유료 멤버십 시작</button>

			<button type="submit" id="submit">다음 페이지</button>
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
  
<script>
$(document).ready(function(){
    var isMailAuthed = false; // DB 상관없이 무조건 mail 인증하기 버튼 누르도록 하기 위해..

    // form 태그 내의 버튼 클릭
    $("button[type=submit]").click(function(e) {
        e.preventDefault();
        if(isMailAuthed){  
            // 인증확인 버튼은 무조건 눌러야 됩니다.
            // vaildation에 의해 돌아왔어도 버튼은 누르도록 하자.
            $.ajax({
                url :"<c:url value='isMailAuthed.jsp' />",
                type : "POST",
                data : {"mail" : $("input[name=memMail]").val()},
                success: function(data){
                    if(data=="메일 인증 완료"){
                        $("form").submit(); 
                    } else {
                        alert("mail 인증해주세요");    
                    }
                },
                error : function(req,st,err){
                    console.log(req);
                }
            });
        } else {
            alert("메일을 인증해주세요");
        }
    });

    // mail 인증하기 버튼 클릭 
    $("#mailAuth").on("click",function(e){
        isMailAuthed = true;  // 다음버튼 누를 수 있게.
        $.ajax({
        	url : "/NetFlex/mailAuth",
            data : {"mail" : $("input[name='memMail']").val()},
            success: function(data){ 
                // 1. 메일 보내고 DB에 넣었으면 자식창 띄우기
               // var mailWindow = window.open("<c:url value='mailWindow.jsp' />","메일인증","_blank, width=500px, height=200px,left=500px,top=200px");
                alert(data);
            },
            error : function(req,status,err){
                console.log(req);
            }
        });
    }); 
});

function validateEmail() {
    var email1 = $("#email1").val();
 
    if (email1 === "") {
        alert("이메일을 올바르게 입력하세요.");
        return false;
    }

    return true;
}

function validateCheckBox() {
    if (!$(".selectAll").is(":checked")) {
        alert("약관에 동의해야 합니다.");
        return false;
    }

    return true;
}

$(document).ready(function() {
    $("#submit").click(function(event) {
        if (!validateEmail() || !validateAuthCode() || !validateCheckBox()) {
            event.preventDefault();
        }
    });
});



</script>
<script src="https://nsp.pay.naver.com/sdk/js/naverpay.min.js"></script>
<script>
 var oPay = Naver.Pay.create({ //네이버페이 객체를 생성합니다.
 "mode" : "development", // development(개발환경) or production(운영환경)
 "clientId": "가입완료 후 발급 받은 인증정보 입력",
 //"chainId" : "{그룹 타입일 경우 chainId를 넣어주세요}“
 //"payType＂: ＂normal", // normal(간편결제) or recurrent(정기/반복결제)
"openType":"page"
 });

 //직접 만드신 네이버페이 결제버튼에 click Event를 할당하세요
 var elNaverPayBtn = document.getElementById("submitBtn");

 elNaverPayBtn.addEventListener("click", function() {
 oPay.open({ // 네이버페이 결제 화면을 호출하며, 파라미터에 결제 데이터를 입력합니다.
 "merchantPayKey": "11111",
 "productName": "Netflex 월정액(${level })",
 "totalPayAmount": "${pirce }",
 "taxScopeAmount": "${pirce }",
 "taxExScopeAmount": 0,
 "productCount": 1,
 "returnUrl": "writeForm5"
 });
 });
</script>
</body>
</html>