package user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;

@Repository
@Transactional
public class UserDAOMyBatis implements UserDAO {

	@Autowired
	SqlSession sqlsession;
	
		// 로그인 검사
		public int login(String email, String password){
			Map<String, String> map = new HashMap<String, String>();
			map.put("email", email );
			map.put("password", password);
			
			
			return sqlsession.selectOne("user.login", map);
		}
		
		// 로그인 접속일자 변경
		@Transactional
		public int update_log(String email) throws Exception{
			return sqlsession.update("user.update_log", email);
		}

		
		public int check_email(String email) {
			// TODO Auto-generated method stub
			return 0;
		}
		
		// 비밀번호 변경
		public int update_password(UserDTO userDTO) throws Exception{
			return sqlsession.update("userDTO.update_password", userDTO);
		}

}
