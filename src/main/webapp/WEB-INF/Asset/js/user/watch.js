// API 로드
function loadYouTubePlayerAPI() {
    // API 로드 스크립트 생성
    var tag = document.createElement('script');
    tag.src = 'https://www.youtube.com/iframe_api';
    var firstScriptTag = document.getElementsByTagName('script')[0];
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

    // API 로드 콜백 함수 설정
    window.onYouTubeIframeAPIReady = function() {
        // 동영상을 표시할 iframe 생성
        var player = new YT.Player('player', {
            height: '700',
            width: '1500',
            videoId: 'IOWo0QruiS8', // 동영상 ID를 변경하여 원하는 동영상을 불러올 수 있습니다.
            playerVars: {
                'autoplay': 1, // 자동 재생
                'controls': 1, // 컨트롤 버튼 표시
                'showinfo': 0, // 정보 표시 안함
                'rel': 0 // 관련 동영상 표시 안함
            }
        });
    };
}

// API 로드 및 동영상 삽입
loadYouTubePlayerAPI();