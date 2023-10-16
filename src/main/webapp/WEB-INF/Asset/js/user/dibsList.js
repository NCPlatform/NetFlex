$(function () {
	// 이미지에 마우스 오버 시 효과 적용
    $('.col-sm.col-3.my-1 img').mouseover(function () {
        $(this).css('transform', 'scale(1.2)');
        $(this).css('cursor', 'pointer');
        // 재생, 상세보기 버튼 표시
        $(this).siblings('.button-container').stop().fadeIn();
    });

    // 이미지에서 마우스 나갈 시 축소
    $('.col-sm.col-3.my-1 img').mouseout(function () {
        $(this).css('transform', 'scale(1)');
        // 재생, 상세보기 버튼 숨김
        $(this).siblings('.button-container').stop().fadeOut();
    });

    // 재생 버튼 클릭 시 watchAll.jsp로 이동
    $('.details-button').click(function () {
        var movieSrcUrl = $(this).data("movie-srcurl");
        window.location.href = '/NetFlex/user/watchAll?movieSrcUrl=' + encodeURIComponent(movieSrcUrl);
    });

    // 재생, 상세보기 버튼에 마우스 오버 시 버튼 유지
    $('.button-container').mouseover(function () {
        $(this).stop().fadeIn();
    });

    // 재생, 상세보기 버튼에 마우스 나갈 시 버튼 숨김
    $('.button-container').mouseout(function () {
        $(this).stop().fadeOut();
    });
    // 페이지 로드 시 상세보기 버튼 숨김
    $('.button-container').hide();

   
});

