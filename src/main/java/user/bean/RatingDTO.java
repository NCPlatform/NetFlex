package user.bean;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter
@Setter
public class RatingDTO {
	private int seqRating;
	private String emial;
	private int seqNick;
	private int seqMovie;
	private double rate;
}
