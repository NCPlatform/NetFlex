<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
header {
	display:flex;
	justify-content: space-between;
}
#writeForm0_headerLogo{
	width: 250px;
	height: 150px;
}
#writeForm0_headerLoginBtn{
	width: 100px;
	height: 30px;
}
#checkMembership{
	text-align: center;
	margin: auto;
}
.termsOfUse {
	text-decoration: none;
	color: blue;
}

.termsOfUse:hover {
	text-decoration: underline;
	cursor: pointer;
	color: blue;
}

</style>
</head>
<header>
<img src="../asset/image/netflex.png" alt="넷플렉스" id="writeForm0_headerLogo">
  <button type="button" onclick="loginForm()" id="writeForm0_headerLoginBtn">로그아웃</button>
</header>

<body>

<form>
<table cellpadding ="7" width="500">
<tr>
	<td>
		
		<h2>원하는 멤버십을 선택하세요.</h2>
		
		<li> TV, 컴퓨터, 스마트폰, 태블릿으로 마음껏 시청하세요.</li>
		<li> 취향에 꼭 맞는 콘텐츠를 추천해 드립니다.</li>
		<li> 멤버십은 언제든지 변경 또는 해지 가능합니다.</li>

	</td>
				
</tr>	
</table>

<table  style="margin: auto;">

<tr>
	<td></td>
	<td class="adStandard"  data-originalsrc="../asset/image/writeForm3_1_1.png" data-newsrc="../asset/image/writeForm3_1.png" name="adStandard">
	<img src="../asset/image/writeForm3_1_1.png" alt="광고형 스탠다드" ></td>
	<td class="basic" id="basic"  data-originalsrc="../asset/image/writeForm3_2_1.png" data-newsrc="../asset/image/writeForm3_2.png">
	<img src="../asset/image/writeForm3_2_1.png" alt="베이식"></td>
	<td class="standard"  data-originalsrc="../asset/image/writeForm3_3_1.png" data-newsrc="../asset/image/writeForm3_3.png">
	<img src="../asset/image/writeForm3_3_1.png" alt="스탠다드"></td>
	<td class="premium"  data-originalsrc="../asset/image/writeForm3_4_1.png" data-newsrc="../asset/image/writeForm3_4.png">
	<img src="../asset/image/writeForm3_4_1.png" alt="프리미엄"></td>
</tr>

<tr>
	<td>월 요금</td>
	<td class="adStandard">5,500원</td>
	<td class="basic">9,500원</td>
	<td class="standard">13,500원</td>
	<td class="premium">17,000원</td>
</tr>

<tr>
	<td>영상 화질</td>
	<td class="adStandard">매우 좋음</td>
	<td class="basic">좋음</td>
	<td class="standard">매우 좋음</td>
	<td class="premium">가장 좋음</td>
</tr>

<tr>
	<td>해상도</td>
	<td class="adStandard">1080p</td>
	<td class="basic">720p</td>
	<td class="standard">1080p</td>
	<td class="premium">4K+HDR</td>
</tr>

<tr>
	<td>가족 구성원 간 동시접속자 수</td>
	<td class="adStandard">2</td>
	<td class="basic">1</td>
	<td class="standard">2</td>
	<td class="premium">4</td>
</tr>

<tr>
	<td>저장</td>
	<td class="adStandard">아니요</td>
	<td class="basic">예</td>
	<td class="standard">예</td>
	<td class="premium">예</td>
</tr>
</table>
<div style="text-align: center;">
<input type="button" value="모든 멤버쉽 확인하기" id="checkMembership" >
</div>
</form>

<p>HD(720p), 풀 HD(1080p), UHD(4K), HDR 화질 제공 여부는 사용하는 인터넷 서비스와 디바이스의 성능에 따라 달라질 수 있습니다.
 모든 콘텐츠가 모든 화질로 제공되지는 않습니다. 자세한 내용은 <span class="termsOfUse" onclick="termsOfUse()">이용 약관을</span> 확인하세요.</p>
<p>함께 거주하는 사람들만 계정을 함께 이용할 수 있습니다.
 프리미엄 멤버십은 동시접속 4명, 스탠다드 또는 광고형 스탠다드는 2명, 베이식은 1명까지 가능합니다.</p>
<form  id = "writeForm3" method="post" action="writeForm4" >
<div style="text-align: center;">
<input type="button" value="다음" onclick="payment()">
</div>
</form>

<script src="http://code.jquery.com/jquery-3.7.0.min.js"></script>

 <script>
        function payment() {
        	  document.getElementById('writeForm3').submit();
        }
 </script>

 <script>
        function termsOfUse() {
        	  location.href='termsOfUse';
        }
 </script>
 
 <script>
  $(document).ready(function() {
    $(".basic").hide();

    $("#checkMembership").click(function() {
      $(".basic").show();
    });
  });
</script>
<script>
  /* $(document).ready(function() {
    // 공통적으로 수행할 작업을 함수로 묶습니다.
	  function changeImageAndColor(element) {
		  var newSrc = element.data("newsrc");
		  element.find("img").attr("src", newSrc);

		  //alert(element.attr("name"));
		  
		  $("." + element.attr("class")).each(function(index,item){
			  //alert(element.attr("name"));
			  $(this).css("color", "red");
		  });
		  // 해당 클래스에 속한 모든 글자의 색상을 변경합니다.
		  $("." + element.attr("class")).css("color", "red");
		}

		$(".adStandard, .basic, .standard, .premium").click(function() {
		  changeImageAndColor($(this));

		  // 다른 클래스들의 글자 색상을 초기화합니다.
		  $(".adStandard, .basic, .standard, .premium").not(this).css("color", "");

		  $(".adStandard, .basic, .standard, .premium").not(this).each(function() {
		    var originalSrc = $(this).data("originalsrc");
		    $(this).find("img").attr("src", originalSrc);
		  });
		});
  }); */
  $(document).ready(function(){
	  
	  $('td').click(function(){
		  
		  $(".adStandard, .basic, .standard, .premium").not(this).each(function() {
		    var originalSrc = $(this).data("originalsrc");
		    $(this).find("img").attr("src", originalSrc);
		  });
		  
		  $(".adStandard, .basic, .standard, .premium").not(this).css("color", "");
		  
		  $("." + $(this).attr("class")).css("color", "red");
		  var newSrc = $(this).data("newsrc");
		  $(this).find("img").attr("src", newSrc);
		  
	  });
  });
</script>
</body>
</html>