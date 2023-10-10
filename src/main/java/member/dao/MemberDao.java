package member.dao;

import org.apache.ibatis.annotations.Param;

import user.bean.UserDTO;

public interface MemberDao {

	public int insertMailAuth(@Param("mail")String mail,@Param("authKey")String authKey);
	public UserDTO getMailAuth(String mail);   //여기저기서 쓰임. 인증되었는지 확인하는데에도 쓰임
	public int updateMailAuth(@Param("mail")String mail,@Param("authKey")String authKey); //인증키 재발급+같은메일로다시가입할때
	//부모창 mail인증하기 버튼

	public int completeAuth(String mail);  //인증완, 자식창 확인버튼
	void write(UserDTO userDTO);
	
	
	
}
