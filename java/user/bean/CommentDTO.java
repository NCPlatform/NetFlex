package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class CommentDTO {
	private int seqComment;
	private int seqNick;
	private String email;
	private String content;
	private int thumbsup;
	private int thumbsdown;
}
