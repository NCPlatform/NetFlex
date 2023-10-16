package account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import account.dao.AccountDAO;
import user.bean.NicknameDTO;
import user.bean.UserInsertDTO;

@Service
public class AccountServiceImpl implements AccountService {
	
	@Autowired
	AccountDAO accountDAO;

	@Override
	public void insertUser(UserInsertDTO userDTO) {
		accountDAO.insertUser(userDTO);
	}

	@Override
	public void insertNickname(List<NicknameDTO> list) {
		accountDAO.insertNickname(list);
		
	}

	@Override
	public int login(String email, String password) {
		return accountDAO.login(email, password);
	}

	@Override
	public int checkEmail(String email) {
		return accountDAO.checkEmail(email);
	}
	
	public String find_email(String name, int age) {
		String email = accountDAO.find_email(name, age);
		return email;
	}

	public String find_password(String email, String name) {
		String password = accountDAO.find_password(email, name);
		return password;
	}
	
}
