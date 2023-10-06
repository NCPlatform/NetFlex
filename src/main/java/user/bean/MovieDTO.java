package user.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
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
	private Date relesedate;
	private int liked;
	private int genrecode1;
	private int genrecode2;
	private int genrecode3;
	private String thumbnailSrc;
	private String thumbnailSrcUrl;
}
