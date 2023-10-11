$(function(){
	$.ajax({
 		type: 'post',
 		url : '/NetFlex/admin/video/getVideoList',
 		data: 'pg='+$('#pg').val(),
 		dataType: 'json', 
 		// 'text'나 'xml', 'json'이 가능하다. 
 		success: function(data){
 			console.log(JSON.stringify(data))
 			// stringify해서 콘솔에 찍어라
 			
 			var addcode;
 			$.each(data, function(index, items){
 				addcode = `<tr class="row"><td class="col-1">`+items.seqMovie+`</td>`
 				addcode += `<td class="col-3"><img class='update' id=`+items.seqMovie+` src = \'`+items.thumbnail+`\'></td>`
 				addcode += `<td class="col-4"><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
 				addcode += `</details></td>`
 				addcode += `<td class="col-2">`+items.director+"("+items.year.substring(0,4)+")"
 				addcode += `<td class="col-2">`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
 				$('#videoListTable').append(addcode)
 					// details id = d+seqMovie
 					// div id = c+seqMovie
 					// details class = ds
 					
		//	$('.title').click(function(){
			// 얘까지 success 함수에 들어가 있어야 한다 @@
			// 아이디 선택자는(클릭한 개체) $(this).text()
			// 이름 선택자는(왼쪽 td) $(this).
				 // alert($(this).parent().prev().text());
			//	 location.href = '/chapter06_Web/user/updateForm?id='+$(this).text()+'&pg='+$('#pg').val();
			
				/*
				
			 			*/
		//		alert("기다려줘유");
		//	});
			 	
 			
 			 
 			})// each
 			
 			$('.title').click(function(){
 				var seqMovie = $(this).parent().parent().prev().prev().text()
 				$.ajax({
			 		type: 'post',
			 		url : '/NetFlex/admin/video/getEpisodeList',
			 		data: 'seqMovie='+seqMovie,
			 		dataType: 'json', 
			 		
			 		success: function(epdata){
			 			//console.log(JSON.stringify(epdata))
			 			// stringify해서 콘솔에 찍어라
			 			var minitable;
			 			var tabletitle;
			 			/**/
			 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis table\'>`
			 				minitable += `<tr>`
			 				minitable += `<th>회차번호</th>`
			 				minitable += `<th>썸네일</th>`
			 				minitable += `<th>소제목</th>`
			 				minitable += `<th>시청연령</th>`
			 				minitable += `</tr>`
			 				
	 					var divid = '#c'+seqMovie
		 				$(divid).append(tabletitle)
		 				
			 			$.each(epdata, function(index, episodes){
			 				minitable += `<tr>`
			 				minitable += `<td>`+episodes.ep+`</td>`
			 				minitable += `<td><img style='width:20rem'src = \'`+episodes.thumbnail+`\'></td>`
			 				minitable += `<td>`+episodes.eptitle+`</td>`
			 				minitable += `<td>`+episodes.grade+`</td>`
			 				minitable += `</tr>`
			 				
			 			})// each(Episodes)
			 			
			 			$(divid).html(minitable)
			 		}, //success
 					error: function(e){
 						var divid = '#c'+seqMovie
 						$(divid).html("<h5>준비중입니다.</h5>");
		 				console.log(e);
		 			}
		 	
		 	
		 	}); // $.ajax
		 }); // $(click)
 				
 		//		})
 			
 		}, // success
 		error: function(e){
 			console.log(e) }
 	
 	
 	}); // $.ajax
 }); // $(function()
		 
$(document).on("click",".update",function(){

	var id = $("this").attr("id");

	Swal.fire({
      title: '해당 에피소드에 에피소드를 추가하시겠습니까?',
      text: "",
      icon: 'question',
      showCancelButton: true,
      confirmButtonColor: '#3085d6',
      cancelButtonColor: '#d33',
      confirmButtonText: '승인',
      cancelButtonText: '취소',
      reverseButtons: true, // 버튼 순서 거꾸로
      
    }).then((result) => {
      if (result.isConfirmed) {
      
      	$.ajax({
			type: 'get',
			url: '/NetFlex/admin/video/checkTable',
			data: 'seqMovie=' + id,
			dataType: 'text',
			success: function(data){
				location.href="/NetFlex/admin/video/updateEp"
			},
			error: function(e){
				Swal.fire({
			    	icon: 'error',
			     	title: '에피소드를 추가할 수 없는 작품입니다.',
			     	timer: 3000
			    });
			    console.log(e);
			}
		}); //ajax
		
      }
    })
});
 
function paging(a){
	location.href = "/NetFlex/admin/video?pg="+a
}