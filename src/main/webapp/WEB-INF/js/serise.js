$(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/user/getSeries',
		dataType: 'json',
		success: function(data){
			$.each(data, function(index, items){
				$('<img/>', {
					src: items.thumbnailSrcUrl, 
					class: 'col my-3'
				}).appendTo($('#imageContainer'));
			});
		},
		error: function(e){
			console.log(e);
		}
	});
});