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
	private int seqMembership;
	private boolean active;
	private Date membershipStartDate;
	private String level;
	private int price;
	private int cleanedPrice;
	
}
