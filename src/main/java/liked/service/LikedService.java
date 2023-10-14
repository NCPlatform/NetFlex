package liked.service;

public interface LikedService {
	void liked(String userEmail, int seqMovie, int seqNick);

	boolean isLiked(String userEmail, int seqMovie, int seqNick);
}
