/**
 * For Dynamic Web Page
 */
 
 $(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/admin/setDashboard',
		data: 'limit=limit 5',
		dataType: 'json',
		success: function(data){
		
			$('#cntUser').html(data.cntUser);
			$('#cntMovie').html(data.cntMovie);
			$('#cntReport').html(data.cntReport);
			
			
			$.each(data.list,function(index, items){
			
				var checked = items.seqReport;
				var btnStyle;
				var btnText;
				if(checked != 1){
					btnStyle = 'btn btn-danger checkReport';
					btnText = 'check';
				}
				if(checked == 1){
					btnStyle = 'btn btn-success checkReport disabled';
					btnText = 'done';
				}
				
				$('<tr/>').append($('<td/>', {
					class: 'd-none d-lg-table-cell',
					text: items.seqReport
				})).append($('<td/>', {
					text: items.comment,
				})).append($('<td/>', {
					class: 'd-none d-lg-table-cell',
					text: items.email
				})).append($('<td/>', {
					text: items.nickname
				})).append($('<td/>', {
					text: items.content
				})).append($('<td/>', {
					
				}).append($('<button/>',{
					class: btnStyle,
					seqReport: items.seqReport,
					seqComment: items.seqComment,
					text: btnText,
					style: 'padding-bottom:0; padding-top:0'
				}))).appendTo($('#reportTbody'));
			});
		},
		error: function(e){
			console.log(e);
		}
	});
});

$(document).on("click",".checkReport",function(){
	Swal.fire({
      title: '신고를 승인하시겠습니까?',
      text: "승인하면 같은 댓글의 다른 신고도 일괄 처리되며 승인취소는 불가능합니다.",
      icon: 'warning',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '승인',
      cancelButtonText: '취소',
      reverseButtons: true, // 버튼 순서 거꾸로
      
    }).then((result) => {
      if (result.isConfirmed) {
      
      	$.ajax({
			type: 'post',
			url: '/NetFlex/admin/checkReport',
			data: 'seqComment=' + $(this).attr('seqComment'),
			dataType: 'text',
			success: function(data){
				Swal.fire({
					icon: 'success',
			     	title: '댓글을 삭제했습니다.',
			     	confirmButtonText: '예',
			    }).then((result)=> {
			    	location.reload();
			    });
			},
			error: function(e){
				Swal.fire({
			    	icon: 'error',
			     	title: '댓글 삭제를 실패했습니다.',
			     	timer: 3000
			    });
			    console.log(e);
			}
		}); //ajax
		
      }
    })
});