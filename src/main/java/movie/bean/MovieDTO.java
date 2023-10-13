package movie.bean;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MovieDTO {
	private int seqMovie;
	private String title;
	private String story;
	private String nation;
	private String director;
	private String actor;
	private Date year;
	private Date releasedate;
	private int liked;
	private int genrecode1;
	private int genrecode2;
	private int genrecode3;
	private String movieSrcUrl;
	private int hit;
	private String thumbnailSrc;
	private String thumbnailSrcUrl;
}
