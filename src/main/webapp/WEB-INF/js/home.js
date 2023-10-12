$(function(){
	$('.carousel').carousel({
            interval: false  // 모든 캐러셀의 자동 슬라이드 기능 비활성화
    });
    $('#openWatchJSP').click(function() {
        window.location.href = '/NetFlex/user/watch';  

    });
    // id=openNewModal 클릭시 모달에 유튜브 띄우기
    $('#openNewModal').click(function() {
        var videoUrl = 'https://www.youtube.com/embed/IOWo0QruiS8';  
        $('#videoFrame2').attr('src', videoUrl);
        $('#videoModal2').modal('show');
    });
    // 이미지에 마우스 오버시 확대
    $('.carousel-item img').mouseover(function() {
        $(this).css('transform', 'scale(1.2)');
        $(this).css('cursor', 'pointer');
        // 재생, 상세보기 버튼 표시
        $(this).siblings('.button-container').stop().fadeIn();
        //재생 버튼을 누를 때 watchAll.jsp로 이동
        $(this).siblings('.button-container').find('.details-button').click(function() {
            var movieSrcUrl = $(this).data("movie-srcurl");
            window.location.href = '/NetFlex/user/watchAll?movieSrcUrl=' + encodeURIComponent(movieSrcUrl);
        });
    });

    // 이미지에서 마우스 나갈시 축소
    $('.carousel-item img').mouseout(function() {
        $(this).css('transform', 'scale(1)');
        // 재생, 상세보기 버튼 숨김
        $(this).siblings('.button-container').stop().fadeOut();
    });
    // 재생, 상세보기 버튼에 마우스 오버 시 버튼 유지
    $('.button-container').mouseover(function() {
        $(this).stop().fadeIn();
    });

    // 재생, 상세보기 버튼에 마우스 나갈 시 버튼 숨김
    $('.button-container').mouseout(function() {
        $(this).stop().fadeOut();
    });
    // 페이지 로드 시 상세보기 버튼 숨김
    $('.button-container').hide();
	
	// 이미지의 상세정보 클릭했을 때 모달 창 띄우기
	$('.details-button2').click(function() {
	    $('#actorInfo').empty();
	
	    //제목 가져오기
	    var movieTitle = $(this).data('title');
	    var actorInfo = '<p><strong>제목:</strong> ' + movieTitle;
	
	    // hit 값 가져오기
	    var hitCount = $(this).data('movie-hit');
	    actorInfo += ' | <strong>조회수:</strong> ' + hitCount + '</p>';
	
	    // 출연자 가져오기
	    var actorData = $(this).data('actor');
	    var actorList = actorData ? actorData.split(',') : [];
	
	    // 출연자 정보 구성
	    actorInfo += '<p><strong>출연자:</strong> ' + actorList.join(', ') + '</p>';
	
	    //감독 가져오기
	    var director = $(this).data('director');
	    if (director) {
	        actorInfo += '<p><strong>감독:</strong> ' + director + '</p>';
	    }
	
	    //스토리 가져오기
	    var story = $(this).data('story');
	    if (story) {
	        actorInfo += '<p><strong>스토리:</strong> ' + story + '</p>';
	    }
	
	    // YouTube 동영상 URL 업데이트
	    var videoUrl = $(this).data("movie-srcurl");
	
	    // 모달 창에 출연자 정보 추가
	    $('#actorInfo').html(actorInfo);
	
	    // 모달 창에 동영상 삽입
	    $('#videoFrame').attr('src', videoUrl);
	
	    // 모달 창 띄우기
	    $('#videoModal').modal('show');
	
	    //좋아요 개수 가져오기
	    var likedCount = $(this).data("liked");
	
	    // 모달 창에 동영상 좋아요 개수 표시
	    $('#likeCount').text(likedCount);
	});
	
});