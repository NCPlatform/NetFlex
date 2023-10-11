package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class UserDTO {
	private String email;
	private String name;
	private int seqNick;
	private String nickname;
	private int age;
	private String phone;
	private boolean active;
	private String membershipType;
	private Date startDate;
	private Date endDate;
	private String startDateString;
	private String endDateString;
}
