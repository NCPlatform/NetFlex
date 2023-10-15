package user.service;

public interface LikedService {
	public void liked(String userEmail, int seqMovie, int seqNick);

	public boolean isLiked(String userEmail, int seqMovie, int seqNick);
}
