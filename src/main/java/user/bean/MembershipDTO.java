package user.bean;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MembershipDTO {

	private int seqMembership;
	private String quality;
    private String resolution;
    private String type;
    private int price;
}
