package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class ReportDTO {
	private int seqReport;
	private int seqComment;
	private String email;
	private int seqNick;
	private String content;
}
