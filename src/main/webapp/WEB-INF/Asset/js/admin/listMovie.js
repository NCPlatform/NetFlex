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
		 				addcode = `<tr><td>`+items.seqMovie+`</td>`
		 				addcode += `<td><img src = \'`+items.thumbnail+`\' class = \'titleImages\'><div id = \'tI`+items.seqMovie+`\' class = \'tIclass\'></div></td>`
		 				addcode += `<td><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
		 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
		 				addcode += `</details></td>`
		 				addcode += `<td>`+items.director+"("+items.year.substring(0,4)+")"
		 				addcode += `<td>`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
		 				$('#videoListTable').append(addcode)
		 					// details id = d+seqMovie
		 					// div id = c+seqMovie
		 					// details class = ds
		 				
		 			})// each
		 			
		 			$('.titleImages').hover(function(){
		 				$('.tIclass').html("")
		 				var thisSeq = $(this).parent().prev().text();
		 				var tIdiv = '#tI'+thisSeq
		 				var tIurl = '/NetFlex/admin/video/addEpisodeForm?seq='+thisSeq
		 				var tIbtn = '<button type = "button" onclick = "location.href = \''+tIurl+'\'">추가</button>'

		 				var eploca = "/NetFlex/admin/video/videoUpdateForm?seqMovie="+thisSeq
		 				tIbtn += '<button type = "button" onclick= \"location.href=\''+eploca+'\'\" >수정</button>'
		 				
		 				$(tIdiv).html(tIbtn)
		 				
		 			})
		 			
		 			$('.title').click(function(){
		 				var seqMovie = $(this).parent().parent().prev().prev().text()
		 				$.ajax({
					 		type: 'post',
					 		url : '/NetFlex/admin/video/getEpisodeList',
					 		data: 'seqMovie='+seqMovie,
					 		dataType: 'json', 
					 		
					 		success: function(epdata){
					 			console.log(JSON.stringify(epdata))
					 			// stringify해서 콘솔에 찍어라
					 			var minitable;
					 			var tabletitle;
					 			/**/
					 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis\'>`
					 				minitable += `<tr>`
					 				minitable += `<th>회차번호</th>`
					 				minitable += `<th>썸네일</th>`
					 				minitable += `<th>소제목</th>`
					 				minitable += `<th>시청연령</th>`
					 				minitable += `</tr>`
					 				
			 					var divid = '#c'+seqMovie
				 				$(divid).html(tabletitle)
				 				
					 			$.each(epdata, function(index, episodes){
					 				minitable += `<tr>`
					 				minitable += `<td>`+episodes.ep+`</td>`
					 				minitable += `<td><img src = \'`+episodes.thumbnail+`\'></td>`
					 			// 231012 수정
					 				minitable += `<td class = \'eptitles\'>`+episodes.eptitle+`<br><div class = \'modifies\' id = \'`+"ep"+seqMovie+"_"+episodes.ep+`\'></div></td>`
					 			// ===============
					 				minitable += `<td>`+episodes.grade+`</td>`
					 				minitable += `</tr>`
					 				
					 				
					 				
					 				
					 				
					 			})// each(Episodes)
					 			
					 			$(divid).html(minitable)
					 			
					 			$('.eptitles').hover(function(){
					 				
					 				$('.modifies').html("");
					 				
					 				var epNum = $(this).prev().prev().text()
					 				var seqMovie = $(this).closest('details').parent().prev().prev().text();
					 				var epcont = "/NetFlex/admin/video/episodeUpdateForm?seqMovie="+seqMovie+"&epNum="+epNum
					 				var addbtns = '<button type = "button" onclick= \"location.href=\''+epcont+'\'\">에피소드 수정</button>'
					 				
					 				var modifytag = '#ep'+seqMovie+"_"+epNum
					 				$(modifytag).html(addbtns);
					 				// location.href = '/NetFlex/admin/video/videoUpdateForm?seqMovie='+seqMovie+'&epNum='+epNum;
					 				
					 				
					 			})
					 			
					 							 			
					 			
					 		}, //success
		 					error: function(e){
				 			console.log(e) }
				 	
				 	
				 	}); // $.ajax
				 }); // $(click)
		 				
		 		//		})
		 			
		 			
		 		}, // success
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		 }); // $(function()
		
		$('#nameorder').on('click',function(){
		
			
			$.ajax({
		 		type: 'post',
		 		url : '/NetFlex/admin/video/getVideoListbyName',
		 		data: 'pg=1&order=title',
		 		dataType: 'json', 
		 		success: function(data){
		 			$('#pageblock').show();
		 			$('#videoListTable').html("");
		 			
		 			var addcode;
		 			$.each(data, function(index, items){
		 				addcode = `<tr><td>`+items.seqMovie+`</td>`
		 				addcode += `<td><img src = \'`+items.thumbnail+`\' class = \'titleImages\'><div id = \'tI`+items.seqMovie+`\' class = \'tIclass\'></div></td>`
		 				addcode += `<td><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
		 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
		 				addcode += `</details></td>`
		 				addcode += `<td>`+items.director+"("+items.year.substring(0,4)+")"
		 				addcode += `<td>`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
		 				$('#videoListTable').append(addcode)
		 					// details id = d+seqMovie
		 					// div id = c+seqMovie
		 					// details class = ds
		 				
		 			})// each
		 			
		 			$('.titleImages').hover(function(){
		 				$('.tIclass').html("")
		 				var thisSeq = $(this).parent().prev().text();
		 				var tIdiv = '#tI'+thisSeq
		 				var tIurl = '/NetFlex/admin/video/addEpisodeForm?seq='+thisSeq
		 				var tIbtn = '<button type = "button" onclick = "location.href = \''+tIurl+'\'">추가</button>'

		 				var eploca = "/NetFlex/admin/video/videoUpdateForm?seqMovie="+thisSeq
		 				tIbtn += '<button type = "button" onclick= \"location.href=\''+eploca+'\'\" >수정</button>'
		 				
		 				$(tIdiv).html(tIbtn)
		 				
		 			})
		 			
		 			$('.title').click(function(){
		 				var seqMovie = $(this).parent().parent().prev().prev().text()
		 				$.ajax({
					 		type: 'post',
					 		url : '/NetFlex/admin/video/getEpisodeList',
					 		data: 'seqMovie='+seqMovie,
					 		dataType: 'json', 
					 		
					 		success: function(epdata){
					 			console.log(JSON.stringify(epdata))
					 			// stringify해서 콘솔에 찍어라
					 			var minitable;
					 			var tabletitle;
					 			/**/
					 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis\'>`
					 				minitable += `<tr>`
					 				minitable += `<th>회차번호</th>`
					 				minitable += `<th>썸네일</th>`
					 				minitable += `<th>소제목</th>`
					 				minitable += `<th>시청연령</th>`
					 				minitable += `</tr>`
					 				
			 					var divid = '#c'+seqMovie
				 				$(divid).html(tabletitle)
				 				
					 			$.each(epdata, function(index, episodes){
					 				minitable += `<tr>`
					 				minitable += `<td>`+episodes.ep+`</td>`
					 				minitable += `<td><img src = \'`+episodes.thumbnail+`\'></td>`
					 			// 231012 수정
					 				minitable += `<td class = \'eptitles\'>`+episodes.eptitle+`<br><div class = \'modifies\' id = \'`+"ep"+seqMovie+"_"+episodes.ep+`\'></div></td>`
					 			// ===============
					 				minitable += `<td>`+episodes.grade+`</td>`
					 				minitable += `</tr>`
					 				
					 				
					 				
					 				
					 				
					 			})// each(Episodes)
					 			
					 			$(divid).html(minitable)
					 			
					 			$('.eptitles').hover(function(){
					 				
					 				$('.modifies').html("");
					 				
					 				var epNum = $(this).prev().prev().text()
					 				var seqMovie = $(this).closest('details').parent().prev().prev().text();
					 				var epcont = "/NetFlex/admin/video/episodeUpdateForm?seqMovie="+seqMovie+"&epNum="+epNum
					 				var addbtns = '<button type = "button" onclick= \"location.href=\''+epcont+'\'\">에피소드 수정</button>'
					 				
					 				var modifytag = '#ep'+seqMovie+"_"+epNum
					 				$(modifytag).html(addbtns);
					 				// location.href = '/NetFlex/admin/video/videoUpdateForm?seqMovie='+seqMovie+'&epNum='+epNum;
					 				
					 				
					 			})
					 			
					 							 			
					 			
					 		}, //success
		 					error: function(e){
				 			console.log(e) }
				 	
				 	
				 	}); // $.ajax
				 }); // $(click)
		 				
		 		//		})
		 			
		 			
		 		}, // success
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		});
		
		$('#neworder').on('click',function(){
			$.ajax({
		 		type: 'post',
		 		url : '/NetFlex/admin/video/getVideoList',
		 		data: 'pg=1',
		 		dataType: 'json', 
		 		success: function(data){
		 			$('#pageblock').show();
		 			$('#videoListTable').html("");
		 			var addcode;
		 			$.each(data, function(index, items){
		 				addcode = `<tr><td>`+items.seqMovie+`</td>`
		 				addcode += `<td><img src = \'`+items.thumbnail+`\' class = \'titleImages\'><div id = \'tI`+items.seqMovie+`\' class = \'tIclass\'></div></td>`
		 				addcode += `<td><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
		 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
		 				addcode += `</details></td>`
		 				addcode += `<td>`+items.director+"("+items.year.substring(0,4)+")"
		 				addcode += `<td>`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
		 				$('#videoListTable').append(addcode)
		 					// details id = d+seqMovie
		 					// div id = c+seqMovie
		 					// details class = ds
		 				
		 			})// each
		 			
		 			$('.titleImages').hover(function(){
		 				$('.tIclass').html("")
		 				var thisSeq = $(this).parent().prev().text();
		 				var tIdiv = '#tI'+thisSeq
		 				var tIurl = '/NetFlex/admin/video/addEpisodeForm?seq='+thisSeq
		 				var tIbtn = '<button type = "button" onclick = "location.href = \''+tIurl+'\'">추가</button>'

		 				var eploca = "/NetFlex/admin/video/videoUpdateForm?seqMovie="+thisSeq
		 				tIbtn += '<button type = "button" onclick= \"location.href=\''+eploca+'\'\" >수정</button>'
		 				
		 				$(tIdiv).html(tIbtn)
		 				
		 			})
		 			
		 			$('.title').click(function(){
		 				var seqMovie = $(this).parent().parent().prev().prev().text()
		 				$.ajax({
					 		type: 'post',
					 		url : '/NetFlex/admin/video/getEpisodeList',
					 		data: 'seqMovie='+seqMovie,
					 		dataType: 'json', 
					 		
					 		success: function(epdata){
					 			console.log(JSON.stringify(epdata))
					 			// stringify해서 콘솔에 찍어라
					 			var minitable;
					 			var tabletitle;
					 			/**/
					 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis\'>`
					 				minitable += `<tr>`
					 				minitable += `<th>회차번호</th>`
					 				minitable += `<th>썸네일</th>`
					 				minitable += `<th>소제목</th>`
					 				minitable += `<th>시청연령</th>`
					 				minitable += `</tr>`
					 				
			 					var divid = '#c'+seqMovie
				 				$(divid).html(tabletitle)
				 				
					 			$.each(epdata, function(index, episodes){
					 				minitable += `<tr>`
					 				minitable += `<td>`+episodes.ep+`</td>`
					 				minitable += `<td><img src = \'`+episodes.thumbnail+`\'></td>`
					 			// 231012 수정
					 				minitable += `<td class = \'eptitles\'>`+episodes.eptitle+`<br><div class = \'modifies\' id = \'`+"ep"+seqMovie+"_"+episodes.ep+`\'></div></td>`
					 			// ===============
					 				minitable += `<td>`+episodes.grade+`</td>`
					 				minitable += `</tr>`
					 				
					 				
					 				
					 				
					 				
					 			})// each(Episodes)
					 			
					 			$(divid).html(minitable)
					 			
					 			$('.eptitles').hover(function(){
					 				
					 				$('.modifies').html("");
					 				
					 				var epNum = $(this).prev().prev().text()
					 				var seqMovie = $(this).closest('details').parent().prev().prev().text();
					 				var epcont = "/NetFlex/admin/video/episodeUpdateForm?seqMovie="+seqMovie+"&epNum="+epNum
					 				var addbtns = '<button type = "button" onclick= \"location.href=\''+epcont+'\'\">에피소드 수정</button>'
					 				
					 				var modifytag = '#ep'+seqMovie+"_"+epNum
					 				$(modifytag).html(addbtns);
					 				// location.href = '/NetFlex/admin/video/videoUpdateForm?seqMovie='+seqMovie+'&epNum='+epNum;
					 				
					 				
					 			})
					 			
					 							 			
					 			
					 		}, //success
		 					error: function(e){
				 			console.log(e) }
				 	
				 	
				 	}); // $.ajax
				 }); // $(click)
		 				
		 		//		})
		 			
		 			
		 		}, // success
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		});
		
		$('#doSearch').on('click',function(){
			$.ajax({
		 		type: 'post',
		 		url : '/NetFlex/admin/video/search',
		 		data: 'value=' + $('#searchInput').val(),
		 		dataType: 'json', 
		 		success: function(data){
		 			$('#pageblock').hide();
		 			$('#videoListTable').html("");
		 			var addcode;
		 			$.each(data, function(index, items){
		 				addcode = `<tr><td>`+items.seqMovie+`</td>`
		 				addcode += `<td><img src = \'`+items.thumbnail+`\' class = \'titleImages\'><div id = \'tI`+items.seqMovie+`\' class = \'tIclass\'></div></td>`
		 				addcode += `<td><details class = \'ds\' id = \'d`+items.seqMovie+`\'><summary class = \'title\'>`
		 				addcode += items.title+`</summary><div id = \'c`+items.seqMovie+`\' class = \'videoTitles\'></div>`
		 				addcode += `</details></td>`
		 				addcode += `<td>`+items.director+"("+items.year.substring(0,4)+")"
		 				addcode += `<td>`+items.genrecode1+","+items.genrecode2+","+items.genrecode3+`</td></tr>`
		 				$('#videoListTable').append(addcode)
		 					// details id = d+seqMovie
		 					// div id = c+seqMovie
		 					// details class = ds
		 				
		 			})// each
		 			
		 			$('.titleImages').hover(function(){
		 				$('.tIclass').html("")
		 				var thisSeq = $(this).parent().prev().text();
		 				var tIdiv = '#tI'+thisSeq
		 				var tIurl = '/NetFlex/admin/video/addEpisodeForm?seq='+thisSeq
		 				var tIbtn = '<button type = "button" onclick = "location.href = \''+tIurl+'\'">추가</button>'

		 				var eploca = "/NetFlex/admin/video/videoUpdateForm?seqMovie="+thisSeq
		 				tIbtn += '<button type = "button" onclick= \"location.href=\''+eploca+'\'\" >수정</button>'
		 				
		 				$(tIdiv).html(tIbtn)
		 				
		 			})
		 			
		 			$('.title').click(function(){
		 				var seqMovie = $(this).parent().parent().prev().prev().text()
		 				$.ajax({
					 		type: 'post',
					 		url : '/NetFlex/admin/video/getEpisodeList',
					 		data: 'seqMovie='+seqMovie,
					 		dataType: 'json', 
					 		
					 		success: function(epdata){
					 			console.log(JSON.stringify(epdata))
					 			// stringify해서 콘솔에 찍어라
					 			var minitable;
					 			var tabletitle;
					 			/**/
					 				minitable = `<table id = \'`+'c'+seqMovie+`\' class = \'minis\'>`
					 				minitable += `<tr>`
					 				minitable += `<th>회차번호</th>`
					 				minitable += `<th>썸네일</th>`
					 				minitable += `<th>소제목</th>`
					 				minitable += `<th>시청연령</th>`
					 				minitable += `</tr>`
					 				
			 					var divid = '#c'+seqMovie
				 				$(divid).html(tabletitle)
				 				
					 			$.each(epdata, function(index, episodes){
					 				minitable += `<tr>`
					 				minitable += `<td>`+episodes.ep+`</td>`
					 				minitable += `<td><img src = \'`+episodes.thumbnail+`\'></td>`
					 			// 231012 수정
					 				minitable += `<td class = \'eptitles\'>`+episodes.eptitle+`<br><div class = \'modifies\' id = \'`+"ep"+seqMovie+"_"+episodes.ep+`\'></div></td>`
					 			// ===============
					 				minitable += `<td>`+episodes.grade+`</td>`
					 				minitable += `</tr>`
					 				
					 				
					 				
					 				
					 				
					 			})// each(Episodes)
					 			
					 			$(divid).html(minitable)
					 			
					 			$('.eptitles').hover(function(){
					 				
					 				$('.modifies').html("");
					 				
					 				var epNum = $(this).prev().prev().text()
					 				var seqMovie = $(this).closest('details').parent().prev().prev().text();
					 				var epcont = "/NetFlex/admin/video/episodeUpdateForm?seqMovie="+seqMovie+"&epNum="+epNum
					 				var addbtns = '<button type = "button" onclick= \"location.href=\''+epcont+'\'\">에피소드 수정</button>'
					 				
					 				var modifytag = '#ep'+seqMovie+"_"+epNum
					 				$(modifytag).html(addbtns);
					 				// location.href = '/NetFlex/admin/video/videoUpdateForm?seqMovie='+seqMovie+'&epNum='+epNum;
					 				
					 				
					 			})
					 			
					 							 			
					 			
					 		}, //success
		 					error: function(e){
				 			console.log(e) }
				 	
				 	
				 	}); // $.ajax
				 }); // $(click)
		 				
		 		//		})
		 			
		 			
		 		}, // success
		 		error: function(e){
		 			console.log(e) }
		 	
		 	
		 	}); // $.ajax
		});
		 
		function boardPaging(a){
			location.href = "/NetFlex/admin/video?pg="+a
		}