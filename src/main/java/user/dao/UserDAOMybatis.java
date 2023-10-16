package user.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.EpisodeDTO;
import user.bean.MovieDTO;
import user.bean.NicknameDTO;

@Repository
@Transactional
public class UserDAOMybatis implements UserDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MovieDTO> findAll() {
		return sqlSession.selectList("movieSQL.findAll");
	}

	@Override
	public List<EpisodeDTO> findEpisode(int seqMovie) {
		return sqlSession.selectList("movieSQL.findEpisode",seqMovie);
	}

	@Override
	public List<MovieDTO> findLikedMovie(String userEmail, int seqNick) {
		return sqlSession.selectList("movieSQL.findLikedMovie", Map.of("email", userEmail, "seqNick", seqNick));
	}

	@Override
	public List<NicknameDTO> getNickname(String email) {
		return sqlSession.selectList("movieSQL.getNickname", Map.of("email", email));
	}

	@Override
	public List<MovieDTO> search(String value) {
		return sqlSession.selectList("movieSQL.search", Map.of("value", value));
	}

	@Override
	public List<MovieDTO> getSerise() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("movieSQL.getSerise");
	}
	@Override
	public List<MovieDTO> getMovie() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("movieSQL.getMovie");
	}
	@Override
	public List<MovieDTO> modal(int seqMovie) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("movieSQL.findEpisode", seqMovie);
	}
	@Override
	public List<MovieDTO> episode(int seqMovie) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("movieSQL.findEpisode", seqMovie);
	}

}
