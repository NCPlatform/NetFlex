package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class UserDTO {

	private String email;
	private String name;
	private String password;
	private int age;
	private String phone;
	private String tel1;
	private String tel2;
	private String tel3;
	private int seqMembership;
	private boolean active;
	private Date membershipStartDate;
	private String authKey;
	private int isAuth;
	private String mail;
	
}
