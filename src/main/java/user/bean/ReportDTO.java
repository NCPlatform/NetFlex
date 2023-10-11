package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class ReportDTO {
	int seqReport;
	int seqComment;
	String Comment;
	String nickname;
	String email;
	String content;
	int checked;
}
