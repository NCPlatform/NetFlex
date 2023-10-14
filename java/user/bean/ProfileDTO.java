package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class ProfileDTO {
	private int seqProfile;
	private String imgName;
	private String src;
}
