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
		
		

		@Override
		public void check_email(String email, HttpServletResponse response) throws Exception {
			// TODO Auto-generated method stub
			
		}

		public Object find_email(HttpServletResponse response, String name) {
			// TODO Auto-generated method stub
			return null;
		}

		public int login(String email, String password) {
			
			return manager.login(email, password);
		}

}