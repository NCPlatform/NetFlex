package user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import user.bean.UserDTO;


public interface UserDAO {
	
	//로그인
	public int login(String email, String password);
	
	//이메일 찾기
	public String find_email(String name, int age);
	
	//비밀번호 찾기
	public String find_password(String email, String name);
	
}
