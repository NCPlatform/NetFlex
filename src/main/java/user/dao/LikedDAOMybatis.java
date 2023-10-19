package user.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class LikedDAOMybatis implements LikedDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int countLiked(String userEmail, int seqMovie, int seqNick) {
		return sqlSession.selectOne("likedSQL.countLiked", Map.of("email", userEmail, "seqMovie", seqMovie, "seqNick", seqNick));
	}

	@Override
	public void liked(String userEmail, int seqMovie, int seqNick) {
		sqlSession.delete("likedSQL.liked",Map.of("email", userEmail, "seqMovie", seqMovie, "seqNick", seqNick));
	}

	@Override
	public void unliked(String userEmail, int seqMovie, int seqNick) {
		sqlSession.insert("likedSQL.unliked",Map.of("email", userEmail, "seqMovie", seqMovie, "seqNick", seqNick));
	}

	@Override
	public void updateLikedCount(int seqMovie, int count) {
		sqlSession.update("likedSQL.updateLikedCount",Map.of("seqMovie", seqMovie, "count", count));
	}
}
