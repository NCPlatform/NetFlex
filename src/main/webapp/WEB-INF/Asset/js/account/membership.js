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
				
				var dataSrcOrigin = "/NetFlex/asset/image/" + items.type + "Origin.png";
				var dataSrc = "/NetFlex/asset/image/" + items.type + ".png";
			
				$('<td/>',{
					class: items.type,
					seq: items.seqMembership,
					type: items.seqType,
					id: items.type,
					'data-originalsrc': dataSrcOrigin,
					'data-newsrc': dataSrc,
					type: items.type,
				}).append($('<img/>',{
					src: dataSrcOrigin
				})).appendTo($('#thead'));
				
				$('<td/>',{
					class: items.type,
					seq: items.seqMembership,
					type: items.type,
					id: items.type,
					'data-type': 'monthlyPrice',
					text: items.price
				}).appendTo($('#tPrice'));
				
				$('<td/>',{
					class: items.type,
					seq: items.seqMembership,
					type: items.type,
					text: items.quality
				}).appendTo($('#tQuality'));
				
				$('<td/>',{
					class: items.type,
					seq: items.seqMembership,
					type: items.seqType,
					text: items.resolution
				}).appendTo($('#tResolution'));
				
			});
			
			$(".basic").hide();
		},
		error: function(e){
			console.log(e);
		}
	});
	
});

$(document).ready(function() {
    $("#checkMembership").click(function() {
      $(".basic").show();
    });
});

$(document).on("click","td",function(){
		  
	  $(".adStandard, .basic, .standard, .premium").not(this).each(function() {
	    var originalSrc = $(this).data("originalsrc");
	    $(this).find("img").attr("src", originalSrc);
	  });
	  
	  $(".adStandard, .basic, .standard, .premium").not(this).css("color", "");
	  
	  $("." + $(this).attr("class")).css("color", "red");
	  var level = $(this).attr("seq");
	  var type = $(this).attr("type");

	  // DTO에 값을 넣습니다.
	  $("#typeInput").val(type);
	  $("#levelInput").val(level);

	  var newSrc = $(this).data("newsrc");
	  $(this).find("img").attr("src", newSrc);

});