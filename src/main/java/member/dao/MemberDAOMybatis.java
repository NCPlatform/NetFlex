package member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.MembershipDTO;
import user.bean.UserDTO;

@Repository
@Transactional
public class MemberDAOMybatis implements MemberDao {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertMailAuth(String mail, String authKey) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserDTO getMailAuth(String mail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMailAuth(String mail, String authKey) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int completeAuth(String mail) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public void write(UserDTO userDTO) {
	    // phone을 조합해서 한 번에 설정
	    String phone = userDTO.getTel1() + userDTO.getTel2() + userDTO.getTel3();
	    userDTO.setPhone(phone);

	    sqlSession.insert("userSQL.write", userDTO);
	}

	@Override
	public List<MembershipDTO> listMembership() {
		sqlSession.selectList("memberSQL.listMembership");
	}

}
