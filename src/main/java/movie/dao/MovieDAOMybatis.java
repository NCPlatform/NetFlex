package movie.dao;

import java.util.List;
import java.util.Map;

import movie.bean.EpisodeDTO;
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
        return sqlSession.selectList("movieSQL.findAll");
    }

    @Override
    public List<EpisodeDTO> findEpisode(int seqMovie) {
        return sqlSession.selectList("movieSQL.findEpisode",seqMovie);
    }

    @Override
    public List<MovieDTO> findLikedMovie(String email, int seqNick) {
        return sqlSession.selectList("movieSQL.findLikedMovie", Map.of("email", email, "seqNick", seqNick));
    }
}
