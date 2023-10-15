package user.bean;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class EpisodeDTO {
	private int ep;
	private String eptitle;
	private String epstory;
	private String runtime;
	private String thumbnail;
	private String grade;
	private int seqMovie;
}
