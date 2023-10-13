function extractVideoId(url) {
    // YouTube 동영상 ID 추출
    var videoUrlParts = url.split('/');
    var videoId = videoUrlParts[videoUrlParts.length - 1];
    return videoId;
}

// Load YouTube Player API and insert the video
$(document).ready(function() {
    // Get the movieSrcUrl from the URL query parameters
    var urlParams = new URLSearchParams(window.location.search);
    var movieSrcUrl = urlParams.get('movieSrcUrl');

    // API 로드
    function loadYouTubePlayerAPI(videoUrl) {
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
                videoId: extractVideoId(videoUrl), // Extract video ID from the URL
                playerVars: {
                    'autoplay': 1, // 자동 재생
                    'controls': 1, // 컨트롤 버튼 표시
                    'showinfo': 0, // 정보 표시 안함
                    'rel': 0, // 관련 동영상 표시 안함
                    'html5': 1 // Use HTML5 player
                }
            });
        };
    }

    // Load YouTube Player API and insert the video
    loadYouTubePlayerAPI(movieSrcUrl);
});