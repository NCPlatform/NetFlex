package liked.dao;

public interface LikedDAO {

	int countLiked(String userEmail, int seqMovie, int seqNick);

	void liked(String userEmail, int seqMovie, int seqNick);

	void unliked(String userEmail, int seqMovie, int seqNick);

	void updateLikedCount(int seqMovie, int count);
}
