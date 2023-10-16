package account.service;

import java.util.List;

import user.bean.NicknameDTO;
import user.bean.UserInsertDTO;


public interface AccountService {

	public void insertUser(UserInsertDTO userDTO);

	public void insertNickname(List<NicknameDTO> list);

	public int login(String email, String password);

	public int checkEmail(String email);

	public String find_email(String name, int age);
	
	public String find_password(String email, String name);
}
