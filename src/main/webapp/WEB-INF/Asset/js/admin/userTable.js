/**
 * For Dynamic Web Page
 */
 
function paging(pg){
 	location.href="/NetFlex/admin/user?userPg="+pg;
 }
 
 $(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/admin/getUser',
		data: 'pg=' + $('#userPg').val() + '&perPg=' + $('#userPerPg').val(),
		dataType: 'json',
		success: function(data){
		
			console.log(JSON.stringify(data.list));
			
			$.each(data.list,function(index, items){
				$('<tr/>').append($('<td/>', {
					class: 'd-none d-lg-table-cell',
					text: items.email
				})).append($('<td/>', {
					text: items.name
				})).append($('<td/>', {
					text: items.age
				})).append($('<td/>', {
					text: items.phone
				})).append($('<td/>', {
					text: items.active
				})).append($('<td/>', {
					text: items.membershipType
				})).append($('<td/>', {
					text: items.startDateString
				})).append($('<td/>', {
					text: items.endDateString
				})).appendTo($('#userTbody'));
			});
			
			$('#paging').html(data.paging);
		},
		error: function(e){
			console.log(e);
		}
	});
	
});

$(document).on("click",".updateMembership",function(){

	var seqMembership = $(this).attr('seqMemberShip');
	var updateName = $(this).parent().siblings('td.name').children("div").children("input").val();
	var updatePrice = $(this).parent().siblings('td.price').children("div").children("input").val()
	
	if(updateName == '' || updatePrice == ''){
		Swal.fire('입력하지 않은 값이 있습니다!');
	}else{
		Swal.fire({
	      title: '데이터를 수정하겠습니까?',
	      text: "멤버십이름 : " + updateName + " 가격" + updatePrice,
	      icon: 'warning',
	      showCancelButton: true,
	      confirmButtonColor: '#3085d6',
	      cancelButtonColor: '#d33',
	      confirmButtonText: '수정',
	      cancelButtonText: '취소',
	      reverseButtons: true, // 버튼 순서 거꾸로
	      
	    }).then((result) => {
	      if (result.isConfirmed) {
	      	$.ajax({
				type: 'post',
				url: '/NetFlex/admin/updateMembership',
				data: 'seqMembership=' + seqMembership + "&name=" + updateName + "&price=" + updatePrice,
				dataType: 'text',
				success: function(data){
					Swal.fire({
				     	text: '정보를 수정했습니다.',
				     	confirmButtonText: '예',
				    }).then((result)=> {
				    	location.reload();
				    });
				},
				error: function(e){
					Swal.fire({
				    	icon: 'error',
				     	title: '오류가 발생했습니다.',
				     	timer: 3000
				    });
				    console.log(e);
				}
			}); //ajax
			
	      }
	    })
	}
});