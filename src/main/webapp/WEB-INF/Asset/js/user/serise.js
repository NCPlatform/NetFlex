$(function(){
	$.ajax({
		type: 'post',
		url: '/NetFlex/movie/getSeries',
		dataType: 'json',
		success: function(data){
			// 성공적으로 데이터를 받아왔을 때 처리하는 코드
            var imageContainer = $('#imageContainer');
            data.forEach(function(movie) {
                // 영화 정보를 화면에 표시하거나 모달로 처리하는 코드를 여기에 추가
                var movieDiv = $('<div class="col my-3"></div>');
                var movieImage = $('<img src="' + movie.thumbnailSrcUrl + '" class="movie-image">');
                movieImage.click(function() {
                	$('#contents').html('');
                	$('#contents').empty();
                	
                    // 영화 정보를 모달로 표시하는 코드를 여기에 추가
                    $('#modalTitle').text(movie.title);
                    $('#title').text(movie.title);
                    $('#actor').text(movie.actor);
                    $('#story').text(movie.story);
                    $('#director').text(movie.director);
                    $('.details-buttons').attr("data-seq-movie",movie.seqMovie);
                    // YouTube 동영상 URL 업데이트
                    var videoUrl = movie.movieSrcUrl;
                    $('#youtubeVideo').html('<iframe width="560" height="315" src="' + videoUrl + '" frameborder="0" allowfullscreen></iframe>');
                    
                    // 모달을 보이도록 설정
                    $('.modalContainer').show();
                });
                movieDiv.append(movieImage);
                imageContainer.append(movieDiv);
            });
        },
        error: function(e) {
            console.log(e);
        }
    });
    
     // 모달 닫기 버튼을 누를 때 모달을 숨깁니다.
    //$('.modal').click(function(){
        //$('.modal').hide();
   // });
   $('.close-button').click(function() {
            $('.modal').hide();
   });
});