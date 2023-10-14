package user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.MovieDTO;

@Repository
@Transactional
public class MovieDAOMybatis implements MovieDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void movie(MovieDTO movieDTO) {
		
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
}
