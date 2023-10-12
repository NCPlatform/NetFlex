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
		
		//아이디 찾기
		public String find_email(String name, int age) {
			Map<String, Object> map2 = new HashMap<String, Object >();
			map2.put("name", name);
			map2.put("age", age);
			
			return sqlsession.selectOne("user.find_email", map2);
		}
		
		//비밀번호 찾기
		public String find_password(String email, String name) {
			Map<String , String> map3 = new HashMap<String, String>();
			map3.put("email", email);
			map3.put("name", name);
			
			return sqlsession.selectOne("user.find_password", map3);
			
		}
		
		
		// 로그인 접속일자 변경
		@Transactional
		public int update_log(String email) throws Exception{
			return sqlsession.update("user.update_log", email);
		}
		

	

			

}
