package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class MembershipDTO {
	private int seqMembership;
	private String type;
	private int price;
}
