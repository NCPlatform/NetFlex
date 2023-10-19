package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class NicknameDTO {
	private int seqNick;
	private String email;
	private String nickname;
	private int genrecode1;
	private int genrecode2;
	private int genrecode3;
	private int seqProfile;
}
