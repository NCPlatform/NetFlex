package admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.MemberShipDTO;
import user.bean.ReportDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class AdminDAOMybatis implements AdminDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ReportDTO> getReportList(String limit) {
		return sqlSession.selectList("adminSQL.getReportList",limit);
	}

	@Override
	public int getCntUser() {
		return sqlSession.selectOne("adminSQL.getUserCnt");
	}

	@Override
	public int getCntMovie() {
		return sqlSession.selectOne("adminSQL.getMovieCnt");
	}

	@Override
	public int getCntReport() {
		return sqlSession.selectOne("adminSQL.getReportCnt");
	}

	@Override
	public List<ReportDTO> getReportListDetail(Map<String, Object> map) {
		return sqlSession.selectList("adminSQL.getReportListDetail",map);
	}

	@Override
	public void checkReport(String seqComment) {
		//seqReport로 하나만 지우는 기능을 삭제
		sqlSession.update("adminSQL.checkOtherReport",seqComment);
	}

	@Override
	public void checkComment(String seqComment) {
		sqlSession.update("adminSQL.checkComment",seqComment);
	}

	@Override
	public List<MemberShipDTO> getMemberShip() {
		return sqlSession.selectList("adminSQL.getMemberShip");
	}

	@Override
	public void updateMembership(Map map) {
		sqlSession.update("adminSQL.updateMembership",map);
	}

	@Override
	public List<UserDTO> getUserList(Map<String, Object> map) {
		return sqlSession.selectList("adminSQL.getUserList",map);
	}

	@Override
	public int getCntNickname() {
		return sqlSession.selectOne("adminSQL.getNicknameCnt");
	}
	
}
