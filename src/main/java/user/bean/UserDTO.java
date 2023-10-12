package user.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserDTO {
	private String email;
	private String name;
	private String password;
	private int age;
	private int phone;
	private int gender;	
		
	public UserDTO(String email, String name, String password,
			int age, int phone, int gender ) {
		super();		
		this.email = email;
		this.name = name;
		this.password = password;
		this.age = age;
		this.phone = phone;
		this.gender = gender;

	}
	

}
