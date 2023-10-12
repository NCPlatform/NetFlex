package user.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.bean.UserDTO;

public interface UserService {

	//로그인	
	int login(String email, String password);
	
	//이메일 찾기
	String find_email(String name, int age);

	//비밀번호 찾기
	String find_password(String email, String name);
		
	void logout(HttpServletResponse response) throws Exception;
	
	
	

	
}