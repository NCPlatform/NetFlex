/**
 * 
 */
 
 $(document).ready(function(){
 
 })
 
 $('#go').click(function(){
 
 	//값 초기화
 	if($('#releasedate1').val() == null || $('#releasedate1').val() == ""){
 		$('#releasedate1').attr("value","1999-03-06");
 	}
 	if($('#releasedate2').val() == null || $('#releasedate2').val() == ""){
 		$('#releasedate2').attr("value","19:30");
 	}
 
 	//유효성 검사
 	if($('input:radio[name=sortcode]:checked').length <1){
 		alert("시리즈인지 영화인지 구분을 해주세요.");
 		return false;
 	}else if($('#title').val() == null||$('#title').val() == ""){
 		alert("제목을 입력해주세요.");
 		return false;
 	}else if($('#updateDate').val() == null || $('#updateDate').val() == ""){
 		alert("개봉일를 제대로 입력해주세요.");
 		return false;
 	}else if($('#nation').val().includes("국가")){
 		alert("국가를 선택하세요.");
 		return false;
 	}
 	
 	//업로드
	var checked = $('input:checkbox[name=genre]:checked').length;
	
	if(checked >= 4){
		$('#themeCaution').html("<span style = 'color: red;'>장르는 세 개까지만 선택 가능합니다.</span>")
		return false;	
	}
	// ---------- 컨텐츠 코드 만들기
	var sortcode = $('input:radio[name=sortcode]:checked').val();
	var langcode = $('#language option:selected').val();
	
	var checked = $('input:checkbox[name=genre]:checked').length;
	
	if(checked >= 4){
		$('#themeCaution').html("<span style = 'color: red;'>장르는 세 개까지만 선택 가능합니다.</span>")
		return false;	
	}else if(checked < 1){
		document.getElementById('genrecode1').value = "00";
		document.getElementById('genrecode2').value = "00";
		document.getElementById('genrecode3').value = "00";
	}else{
		
		var genres = [];
	    $('input[name=genre]:checked').each(function() {
	        genres.push($(this).val());
	    });
		
	   var genrecode1 = sortcode+""+langcode+""+genres[0]
	   var genrecode2 = genres[1]
	   var genrecode3 = genres[2]
	    
	   if (typeof genrecode2 =="undefined"){
		   genrecode2 = 0;
	   }
	   if (typeof genrecode3 == "undefined"){
		   genrecode3 = 0;
	   } 
	   
	   document.getElementById('genrecode1').value = genrecode1
	   document.getElementById('genrecode2').value = genrecode2
	   document.getElementById('genrecode3').value = genrecode3
	  
	 //  var releasedate = document.getElementById('releasedate1')
	 //  releasedate += document.getElementById('releasedate2')
	 //  document.getElementById('releeasedate').value = releasedate
	}
	// ========================
});

$("#story").keyup(function(e) {
	var content = $(this).val();
	$("#byteCheck").text("(" + content.length + " / 255 Bytes)"); 
	if (content.length > 255) {
		$("#byteCheck").html("<span style = 'color:red;'>입력 가능 글자 수 초과</span>")
		$(this).val(content.substring(0, 255));
	}
});