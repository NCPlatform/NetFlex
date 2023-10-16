$(function() {
    $('.details-buttons').click(function() {
		
        var seqMovie = $(this).attr('data-seq-movie');
        // 서버로 데이터 요청
        $.ajax({
            url: '/NetFlex/movie/episode',
            type: 'post',
            data: 'seqMovie=' + seqMovie,
            dataType: 'json',
            success: function(episodes) {        
				$('#contents').html('');
				$('#contents').empty();
                // 회차 정보를 표시합니다.   
                for (var i = 0; i < episodes.length; i++) {
                    var episode = episodes[i];
                    var episodeInfo = '<img src="' + episode.thumbnail + '" alt="에피소드 썸네일" style="max-width: 480px; height: auto;">';
                    episodeInfo += '<p><strong>에피소드 ' + episode.ep + ':</strong> ' + episode.eptitle + '</p>';
                    episodeInfo += '<p><strong>스토리:</strong> ' + episode.epstory + '</p>';
                    episodeInfo += '<p><strong>런타임:</strong> ' + episode.runtime + '</p>';
                    episodeInfo += '<p><strong>등급:</strong> ' + episode.grade + '</p>';
                    episodeInfo += '<hr>';
                    $('#contents').append(episodeInfo);
                }

                modal.style.display = "flex";
            },
            error: function(xhr, status, error) {
                console.log('에러 발생: ' + error);
            }
        });
    });
});