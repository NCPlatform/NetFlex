$('#logout').click(function(){
	$.ajax({
		type: 'get',
		url: '/NetFlex/account/logout',
		dataType: 'text',
		success: function(data){
			Swal.fire(
		      "로그아웃에 성공했습니다."
		    ).then((result) => {
		      if (result.isConfirmed) {
		      	location.href="/NetFlex/account"
		      }
		    })
		},
		error: function(e){
			console.log(e);
		}
	});
});