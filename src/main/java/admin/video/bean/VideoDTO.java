package admin.video.bean;

import java.sql.Date;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class VideoDTO {
	//table movie
	private int seqMovie, liked, genrecode1, genrecode2, genrecode3, hit;
	private String title, story, nation, director, actor, thumbnailSrc, thumbnailSrcUrl, movieSrcUrl;
	//private Date year, releasedate; -- 추후 releasedate(hh:mm) datetime 타입을 활용하게 되면 살릴 것
	// 										jsp <input type = 'time'>도 아직 넘어오는 값이 없음
	
	private String year, releasedate;
	//table genre
	private String genrename1, genrename2, genrename3; // 컬럼에는 존재하지 않음, as로 불러올 예정
	//table each_movie
	private String thumbnail; // 영화관리화면 게시용
	// thumbnail은 thumbnailSrc와 thumbnailSrcUrl 중 null이 아닌 것 or 길이가 더 긴 것
	// 으로 지정된다. 다만 이 방법은 임시이기 때문에 바뀔 수 있다.
	
	public void setThumbnail() {
		
		
		if(this.thumbnailSrcUrl == null) {
			this.thumbnail = this.thumbnailSrc;
		}else if(this.thumbnailSrc == null){
			this.thumbnail = this.thumbnailSrcUrl;
		}else if(this.thumbnailSrc.length()>=this.thumbnailSrcUrl.length()) {
			this.thumbnail = this.thumbnailSrc;
		}else if(this.thumbnailSrcUrl.length()>this.thumbnailSrc.length()) {
			this.thumbnail = this.thumbnailSrcUrl;
		}
	}
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	// DBtest
	private int seq;
	public void  setSeq(int seq) {
		this.seq = seq;
	}
	public int getSeq() {
		return seq;
	}
	
	
	@Override
	public String toString() {
		
		return ""+seqMovie+" "+title+" "+story+" "+nation+" "+director+" "+actor+" "+year+" "+releasedate+"\ncode:"+genrecode1+" "+genrecode2+" "+genrecode3; 
		
	}
	
	public int getHit() {
		return hit;
	}

	public String getMovieSrcUrl() {
		return movieSrcUrl;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}



	public void setMovieSrcUrl(String movieSrcUrl) {
		this.movieSrcUrl = movieSrcUrl;
	}

	public int getSeqMovie() {
		return seqMovie;
	}
	public int getLiked() {
		return liked;
	}
	public int getGenrecode1() {
		return genrecode1;
	}
	public int getGenrecode2() {
		return genrecode2;
	}
	public int getGenrecode3() {
		return genrecode3;
	}
	public String getTitle() {
		return title;
	}
	public String getStory() {
		return story;
	}
	public String getNation() {
		return nation;
	}
	public String getDirector() {
		return director;
	}
	public String getActor() {
		return actor;
	}
	public String getThumbnailSrc() {
		return thumbnailSrc;
	}
	public String getThumbnailSrcUrl() {
		return thumbnailSrcUrl;
	}
	/*
	public Date getYear() {
		return year;
	}
	public Date getReleasedate() {
		return releasedate;
	}
	*/
	
	public String getYear() {
		return year;
	}
	public String getReleasedate() {
		return releasedate;
	}
	
	// ==============
	public String getGenrename1() {
		return genrename1;
	}
	public String getGenrename2() {
		return genrename2;
	}
	public String getGenrename3() {
		return genrename3;
	}
	public void setSeqMovie(int seqMovie) {
		this.seqMovie = seqMovie;
	}
	public void setLiked(int liked) {
		this.liked = liked;
	}
	public void setGenrecode1(int genrecode1) {
		this.genrecode1 = genrecode1;
	}
	public void setGenrecode2(int genrecode2) {
		this.genrecode2 = genrecode2;
	}
	public void setGenrecode3(int genrecode3) {
		this.genrecode3 = genrecode3;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setStory(String story) {
		this.story = story;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public void setThumbnailSrc(String thumbnailSrc) {
		if(thumbnailSrc == null) {
			thumbnailSrc = "";
		}
		this.thumbnailSrc = thumbnailSrc;
	}
	public void setThumbnailSrcUrl(String thumbnailSrcUrl) {
		if(thumbnailSrcUrl == null) {
			thumbnailSrcUrl = "";
		}
		this.thumbnailSrcUrl = thumbnailSrcUrl;
	}
	
	/*
	public void setYear(Date year) {
		this.year = year;
	}
	public void setReleasedate(Date releasedate) {
		this.releasedate = releasedate;
	}
	*/
	
	public void setYear(String year) {
		this.year = year;
	}
	
	public void setReleasedate(String releasedate) {
		this.releasedate = releasedate;
	}
	// ===============
	public void setGenrename1(String genrename1) {
		this.genrename1 = genrename1;
	}
	public void setGenrename2(String genrename2) {
		this.genrename2 = genrename2;
	}
	public void setGenrename3(String genrename3) {
		this.genrename3 = genrename3;
	}
	
	
	
}
