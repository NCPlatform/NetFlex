/**
 * For Dynamic Web Page
 */
 
 $(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/admin/getMemberShip',
		dataType: 'json',
		success: function(data){
			$.each(data,function(index, items){
			
				$('<tr/>').append($('<td/>', { //seq
					class: 'align-middle',
					scope: 'row',
					text: items.seqMembership
				})).append($('<td/>', { //name
					class: 'align-middle name'
				}).append($('<div/>',{
					class: 'form-floating'
				}).append($('<input/>',{
					type: 'text',
					class: 'form-control name',
					id: 'floatingInput',
					value: items.type,
					placeholder: 'name'
				})).append($('<label/>',{
					for: 'floatingInput',
					text: 'type'
				})))).append($('<td/>', { //price
					class: 'align-middle price'
				}).append($('<div/>',{
					class: 'form-floating'
				}).append($('<input/>',{
					type: 'number',
					class: 'form-control price',
					id: 'floatingInput',
					value: items.price,
					placeholder: '99'
				})).append($('<label/>',{
					for: 'floatingInput',
					text: 'price'
				})))).append($('<td/>', { //quality
					class: 'align-middle quality'
				}).append($('<input/>',{
					type: 'text',
					class: 'form-control quality',
					value: items.quality,
					placeholder: 'quality',
					'aria-label': 'Disabled input example',
					'disabled': 'disabled'
				}))).append($('<td/>',{ //resolution
					class: 'align-middle resolution'
				}).append($('<input/>',{
					type: 'text',
					class: 'form-control resolution',
					value: items.resolution,
					placeholder: 'resolution',
					'aria-label': 'Disabled input example',
					'disabled': 'disabled'
				}))).append($('<td/>',{
					class: 'align-middle'
				}).append($('<button/>',{
					type: 'button',
					seqMemberShip: items.seqMembership,
					class: 'btn btn-warning updateMembership',
					text: '수정'
				}))).appendTo($('#membershipTbody'));
			});
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