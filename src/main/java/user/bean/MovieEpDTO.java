package user.bean;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.Getter;
import lombok.Setter;

@Component
@Getter @Setter
public class MovieEpDTO {
	int ep;
	String eptitle;
	String epstory;
	Date runtime;
	String thumbnail;
	String Grade;
	int seqMovie;
}
