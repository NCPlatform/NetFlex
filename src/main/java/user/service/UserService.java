package user.service;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.bean.UserDTO;

public interface UserService {

	int login(String email, String password);

	void check_email(String email, HttpServletResponse response) throws Exception;

	void logout(HttpServletResponse response) throws Exception;
	
	

	
}