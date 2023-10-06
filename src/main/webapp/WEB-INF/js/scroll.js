$(function() {
	$.ajax({
		type: 'post',
		url: '/NetFlex/user/series',
		data: 'pg=' + $('#pg').val(),
		dataType: 'json', /*'text' or 'xml' or 'JSON'*/
		success: function(data) {
			//console.log(JSON.stringify(data));
			//console.log(data.list[0].name);
			
			$.each(data.list, function(index, items){
				$('<tr/>').append($('<td/>', {
					align : 'center',
					text : items.name
					
				})).append($('<td/>', {
				}).append($('<a/>', { 
				   href: '#', 
				   text : items.id,
				   class : 'subjectA'
				   })) 
				   ).append($('<td/>', {
					align : 'center',
					text : items.pwd
				})).appendTo($('#userListTable'));
			});//$.each
			//페이징 처리
			$('#userPagingDiv').html(data.userPaging.pagingHTML);
			
			//아이디를 클릭했을 때
			$('.subjectA').click(function(){
			  /*alert($(this).text());
				alert($(this).prop('tagName'));
				alert($(this).parent().prop('tagName'));
				alert($(this).parent().prev().prop('tagName'));
				alert($(this).parent().prev().text());*/
				
				location.href = '/NetFlex/user/series/?id=' + $(this).text() + '&pg=' + $('#pg').val();
			});
		},
		error: function(e) {
			console.log(e);
		}
	});
});