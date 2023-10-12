package user.service;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.UserDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO manager;
			
		// 로그아웃
		@Override
		public void logout(HttpServletResponse response) throws Exception {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("location.href=document.referrer;");
			out.println("</script>");
			out.close();
		}
				
		//로그인
		public int login(String email, String password) {
			
			return manager.login(email, password);
		}

		//이메일 찾기
		public String find_email(String name, int age) {
			String email = manager.find_email(name, age);
			System.out.println(email);
			return email;
		}

		//비밀번호 찾기
		public String find_password(String email, String name) {
			String password = manager.find_password(email, name);
			System.out.println(password); 
			return password;
		}

}