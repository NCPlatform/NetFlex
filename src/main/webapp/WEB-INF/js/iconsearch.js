$(function(){
    $("#searchIcon").click(function(event) {
        event.stopPropagation(); // 이벤트 전파 중단

        $("#searchBox").toggle(); // 토글로 보이기/숨기기
    });

    $("#searchBox").click(function(event) {
        event.stopPropagation(); // 이벤트 전파 중단
    });

    // 문서의 다른 영역 클릭 시 검색창 숨김
    $(document).click(function() {
        $("#searchBox").hide();
    });
});