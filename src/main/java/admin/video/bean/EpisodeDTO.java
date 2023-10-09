package admin.video.bean;

import java.sql.Time;

public class EpisodeDTO {
	private int ep, seqMovie;
	private String eptitle,epstory, runtime, thumbnail, grade;
	private String tableName;
	// private Time runtime;
	
	@Override
	public String toString() {
		return "epDTO : "+ep+" "+seqMovie+" "+eptitle+" "+epstory+" "+runtime+" "+thumbnail+" "+grade;
	}
	
	public void setTableName(int seqMovie) {
		this.tableName = "`"+seqMovie+"`";
	}
	
	public String getTableName() {
		return tableName;
	}
	
	public int getEp() {
		return ep;
	}
	public void setEp(int ep) {
		this.ep = ep;
	}
	public int getSeqMovie() {
		return seqMovie;
	}
	public void setSeqMovie(int seqMovie) {
		this.seqMovie = seqMovie;
	}
	public String getEptitle() {
		return eptitle;
	}
	public void setEptitle(String eptitle) {
		this.eptitle = eptitle;
	}
	public String getEpstory() {
		return epstory;
	}
	public void setEpstory(String epstory) {
		this.epstory = epstory;
	}
	public String getRuntime() {
		return runtime;
	}
	public void setRuntime(String runtime) {
		this.runtime = runtime;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
}
