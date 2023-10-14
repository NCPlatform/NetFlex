package liked.service;

import lombok.RequiredArgsConstructor;

import liked.dao.LikedDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class LikedImpl implements LikedService {

	private final LikedDAO likedDAO;

	@Override
	@Transactional
	public void liked(String userEmail, int seqMovie, int seqNick) {
		// 동시성 이슈 있을수 있음
		int i = likedDAO.countLiked(userEmail, seqMovie,seqNick);
		if (i == 0) {
			likedDAO.liked(userEmail, seqMovie,seqNick);
			likedDAO.updateLikedCount(seqMovie, 1);
		} else {
			likedDAO.unliked(userEmail, seqMovie,seqNick);
			likedDAO.updateLikedCount(seqMovie, -1);
		}
	}

	@Override
	public boolean isLiked(String userEmail, int seqMovie, int seqNick) {
		// 0이면 좋아요 x 1이면 좋아요
		return likedDAO.countLiked(userEmail, seqMovie,seqNick)!=0;
	}

}
