package user.bean;

import java.sql.Date;

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
	private boolean active;
	private int seqMembership;
	private Date membershipStartDate;
}
