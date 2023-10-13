package liked.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import user.bean.LikedDTO;

public class LikedDAOMybatis implements LikedDAO {
	@Autowired
    private SqlSessionTemplate sqlSession;
	
	@Override
	public List<LikedDTO> liked() {
		
		return sqlSession.selectList("movieSQL.findAllLiked");
	}

}
