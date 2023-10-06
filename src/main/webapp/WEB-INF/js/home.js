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
        $('#videoFrame').attr('src', videoUrl);
        $('#videoModal').modal('show');
    });
    // 이미지에 마우스 오버시 확대
    $('.carousel-item img').mouseover(function() {
        $(this).css('transform', 'scale(1.2)');
        $(this).css('cursor', 'pointer');
        // 재상세보기 버튼 표시
        $(this).siblings('.button-container').stop().fadeIn();
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

    // 이미지를 클릭했을 때 모달 창 띄우기
    $('.details-button2').click(function() {
        // YouTube 동영상 URL 업데이트
        //youtube링크 따올 때 embed 써야함
        var videoUrl = 'https://www.youtube.com/embed/kbCW-a02QA4';
        

        // 모달 창에 동영상 삽입
        $('#videoFrame').attr('src', videoUrl);

        // 모달 창 띄우기
        $('#videoModal').modal('show');
    });
});