package movie.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import movie.bean.MovieDTO;

@Repository
@Transactional
public class MovieDAOMybatis implements MovieDAO {

    @Autowired
    private SqlSessionTemplate sqlSession;


    @Override
    public List<MovieDTO> findAll() {
        return sqlSession.selectList("movieSQL.movie");
    }
}
