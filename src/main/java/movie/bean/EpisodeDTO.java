package movie.bean;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class EpisodeDTO {
	private int ep;
	private String eptitle;
	private String epstory;
	private String runtime;
	private String thumbnail;
	private String grade;
	private int seqMovie;
}
