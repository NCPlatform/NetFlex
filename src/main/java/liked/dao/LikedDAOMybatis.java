package liked.dao;

import lombok.RequiredArgsConstructor;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
@RequiredArgsConstructor
public class LikedDAOMybatis implements LikedDAO {

    private final SqlSessionTemplate sqlSession;
	
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
