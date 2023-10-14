package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class ThumbDTO {
	private int seqthumb;
	private int seqNick;
	private String email;
	private boolean upordown;
	private int seqComment;
}
