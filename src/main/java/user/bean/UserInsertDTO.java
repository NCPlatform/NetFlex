package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class UserInsertDTO {
	private String email;
	private String name;
	private String password;
	private int age;
	private String phone;
	private int active;
	private int seqMembership;
	private Date membershipStartDate;
	private Date membershipEndDate;
}
