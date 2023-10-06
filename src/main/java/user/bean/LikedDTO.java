package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class LikedDTO {
	private int seqliked;
	private int seqMovie;
	private int seqNick;
	private String email;
}
