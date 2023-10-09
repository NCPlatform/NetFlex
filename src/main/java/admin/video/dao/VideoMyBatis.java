package admin.video.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.mapping.ParameterMapping;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;
@Repository
@Transactional
public class VideoMyBatis implements VideoDAO {
	@Autowired
	private SqlSession sqlSession;
	    
	@Override
	public void upload(VideoDTO videoDTO) {
		sqlSession.insert("videoSQL.upload", videoDTO);
	}

	@Override
	public void create(int tableName) {
	 	String sql = "CREATE TABLE `"+tableName+"`(`ep` int NOT NULL,";
	 
		sql += "`eptitle` varchar(255) NOT NULL, `epstory` varchar(255) NOT NULL,";
		sql += " `runtime` time DEFAULT NULL,  `thumbnail` varchar(255) NOT NULL,";
		sql += "`grade` varchar(255) NOT NULL DEFAULT 'all',";
		sql += " `seqMovie` int NOT NULL,";
		sql += " KEY `seqMovie` (`seqMovie`),";
		sql += "CONSTRAINT `"+tableName+"_ibfk_1` FOREIGN KEY (`seqMovie`) REFERENCES `movie` (`seqMovie`),";
		sql += "CONSTRAINT `"+tableName+"_ibfk_2` FOREIGN KEY (`seqMovie`) REFERENCES `movie` (`seqMovie`)";
		sql += ")";
		
		System.out.println(sql);
		HashMap<String, String> map = new HashMap<>();

		map.put("sql", sql);
		sqlSession.update("videoSQL.create", map);
		
	}

	@Override
	public int importSeq() {
		HashMap<String, String> text = new HashMap<>();
		text.put("seqMovie", "seqMovie");
		int seqMovie = sqlSession.selectOne("videoSQL.importSeq", text);
		return seqMovie;
	}
	
	@Override
	public VideoDTO searchMovie(VideoDTO videoDTO) {
		VideoDTO resultDTO = sqlSession.selectOne("videoSQL.searchMovie", videoDTO);
		return resultDTO;
	}

	@Override
	public void addEpisodes(EpisodeDTO epDTO) {
		sqlSession.insert("videoSQL.addEpisodes", epDTO);
	}
}
