/**
 * using url to highlight nav-item where we in
 */
 
 $(document).ready(function(){
 	var url = document.location.href;
 	if(url.match("user")){
 		$('#aUser').addClass("current");
 		$('#aMovie').addClass("sidebar-link");
 		$('#aDashboard').addClass("sidebar-link");
 		$('#aReport').addClass("sidebar-link");
 		$('#navTitle').text("USER");
 	}else if(url.match("video")){
 		$('#aUser').addClass("sidebar-link");
 		$('#aMovie').addClass("current");
 		$('#aDashboard').addClass("sidebar-link");
 		$('#aReport').addClass("sidebar-link");
 		$('#navTitle').text("MOVIE");
 	}else if(url.match("report")){
 		$('#aUser').addClass("sidebar-link");
 		$('#aMovie').addClass("sidebar-link");
 		$('#aDashboard').addClass("sidebar-link");
 		$('#aReport').addClass("current");
 		$('#navTitle').text("REPORT");
 	}else{
 		$('#aUser').addClass("sidebar-link");
 		$('#aMovie').addClass("sidebar-link");
 		$('#aDashboard').addClass("current");
 		$('#aReport').addClass("sidebar-link");
 		$('#navTitle').text("DASHBOARD");
 	}
 	
 	$('#logout').click(function(){
 		$.ajax({
		type: 'get',
		url: '/NetFlex/account/logout',
		dataType: 'text',
		success: function(data){
			Swal.fire({
			  title: "로그아웃을 완료했습니다",
		      text: "메인페이지로 갑니다.",
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
 });