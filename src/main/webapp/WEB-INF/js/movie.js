$(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/user/getMovie',
		dataType: 'json',
		success: function(data){
			$.each(data, function(index, items){
				$('<img/>', {
					src: items.thumbnailSrcUrl, 
					class: 'col'
				}).appendTo($('#movieContainer'));
			});
		},
		error: function(e){
			console.log(e);
		}
	});
});