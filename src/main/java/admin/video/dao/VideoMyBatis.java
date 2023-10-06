package admin.video.dao;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
		String sql = "CREATE TABLE "+tableName+"(ep int not null,";
		sql += "eptitle varchar(255) not null, epstory varchar(255) not null,";
		sql += "runtime time default null, thumbnail varchar(255) not null,";
		sql += "grade varchar(255) not null default 'all',";
		sql += "seqMovie int not null,";
		sql += "primary key(ep),";
		sql += "key seqMovie(seqMovie),";
		sql += "constraint "+tableName+"_ibfk_1 foreign key(seqMovie) references movie(seqMovie)";
		sql += ")";
		HashMap<String, String> map = new HashMap<>();
		
		map.put("sql", sql);
		sqlSession.update("videoSQL.create", map);
		
	}

	@Override
	public VideoDTO searchMovie(VideoDTO videoDTO) {
		
		VideoDTO resultDTO = sqlSession.selectOne("videoSQL.importSeq", videoDTO);
		return resultDTO;
	}

}
