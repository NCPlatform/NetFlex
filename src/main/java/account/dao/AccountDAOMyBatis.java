package account.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import account.service.AccountService;
import user.bean.NicknameDTO;
import user.bean.UserInsertDTO;

@Repository
@Transactional
public class AccountDAOMyBatis implements AccountDAO {
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public void insertUser(UserInsertDTO userDTO) {
		sqlSession.insert("accountSQL.insertUser",userDTO);
	}

	@Override
	public void insertNickname(List<NicknameDTO> list) {
		for(NicknameDTO nick:list) {
			System.out.println(nick.getNickname() + nick.getGenrecode1() + nick.getGenrecode2() + nick.getGenrecode3());
			sqlSession.insert("accountSQL.insertNick", nick);
		}
		
	}

	@Override
	public int login(String email, String password) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email );
		map.put("password", password);
		int result = sqlSession.selectOne("accountSQL.login", map);
		System.out.println(result);
		return result;
	}

	@Override
	public int checkEmail(String email) {
		return sqlSession.selectOne("accountSQL.checkEmail", email);
	}
	
	public String find_email(String name, int age) {
		Map<String, Object> map2 = new HashMap<String, Object >();
		map2.put("name", name);
		map2.put("age", age);
		
		return sqlSession.selectOne("accountSQL.find_email", map2);
	}
	
	public String find_password(String email, String name) {
		Map<String , String> map3 = new HashMap<String, String>();
		map3.put("email", email);
		map3.put("name", name);
		
		return sqlSession.selectOne("accountSQL.find_password", map3);
		
	}

}
