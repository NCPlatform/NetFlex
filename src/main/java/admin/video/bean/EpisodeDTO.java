package admin.video.bean;

import java.util.ArrayList;
import java.util.StringTokenizer;


public class EpisodeDTO {
	private int ep, seqMovie;
	private String eptitle,epstory, runtime, thumbnail, thumbnailSrc, thumbnailSrcUrl, grade;
	private String eplist;
	// private Time runtime;
	
	@Override
	public String toString() {
		return "epDTO : "+ep+" "+eplist+" "+seqMovie+" "+eptitle+" "+epstory+" "+runtime+" "+thumbnailSrc+" "+thumbnailSrcUrl+" "+grade;
	}
	
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public String getThumbnail() {
		return thumbnail;
	}
	
	public void setEplist(String eplist) {
		this.eplist = eplist;
	}
	
	public String getEplist() {
		return eplist;
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
	public String getThumbnailSrc() {
		return thumbnailSrc;
	}
	public void setThumbnailSrc(String thumbnailSrc) {
		this.thumbnailSrc = thumbnailSrc;
	}
	public String getThumbnailSrcUrl() {
		return thumbnailSrcUrl;
	}
	public void setThumbnailSrcUrl(String thumbnailSrcUrl) {
		this.thumbnailSrcUrl = thumbnailSrcUrl;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public EpisodeDTO(String eptitle, String epstory, String runtime, String thumbnailSrc, String thumbnailSrcUrl, String grade, int seqMovie) {
		
		this.eptitle = eptitle;
		this.epstory = epstory;
		this.runtime = runtime;
		this.thumbnailSrc = thumbnailSrc;
		this.thumbnailSrcUrl = thumbnailSrcUrl;
		this.grade = grade;
		this.seqMovie = seqMovie;
		
		if(thumbnailSrc.length() == 0 && thumbnailSrcUrl.length() == 0)
			this.thumbnail = "";
		else {
			if(thumbnailSrc.length()>=thumbnailSrcUrl.length()) {
				if(thumbnailSrc.length() == 0 && thumbnailSrcUrl.length() == 0)
					thumbnailSrc = "";
				this.thumbnail = thumbnailSrc;
			}else {
				this.thumbnail = thumbnailSrcUrl;
			}
		}
	}
	
	public EpisodeDTO() {
		
		// 기본 생성자
	}

	public ArrayList<EpisodeDTO> makeList() {
		ArrayList<EpisodeDTO> DTOlist = new ArrayList<>();
		
		StringTokenizer eptitleTK = new StringTokenizer(eptitle, ",");
		StringTokenizer epstoryTK = new StringTokenizer(epstory, ",");
		StringTokenizer runtimeTK = new StringTokenizer(runtime, ","); // 수정 필요
		StringTokenizer thumbnailSrcTK = new StringTokenizer(thumbnailSrc, ",");
		StringTokenizer thumbnailSrcUrlTK = new StringTokenizer(thumbnailSrcUrl, ",");
		StringTokenizer gradeTK = new StringTokenizer(grade, ",");
		
		String neweptitle, newepstory, newruntime, newthumbnailSrc, newthumbnailSrcUrl, newgrade, neweplist;
		
		while(eptitleTK.hasMoreTokens()) {
			
			neweptitle = eptitleTK.nextToken(); 
			newepstory = epstoryTK.nextToken(); 
			newgrade = gradeTK.nextToken();
			
			int min = Integer.parseInt(runtimeTK.nextToken());
			if(min>=60) {
				newruntime = (min/60)+":"+(min%60)+":"+runtimeTK.nextToken();
			}else {
				newruntime = min+":"+runtimeTK.nextToken();
			} // runtime 분 단위 변환 
			
			try {
				newthumbnailSrc = thumbnailSrcTK.nextToken();
				
			}catch(Exception e) {
				newthumbnailSrc = "";
			} // 원래 NullpointerException으로 작성되었고
			// 테스트 실행 당시 NoSuchElementException이 발생했다.
			
			try {
				newthumbnailSrcUrl = thumbnailSrcUrlTK.nextToken();
			}catch(Exception e) {
				newthumbnailSrcUrl = "";
			}
			
			DTOlist.add(new EpisodeDTO(neweptitle, newepstory, newruntime, 
					newthumbnailSrc , newthumbnailSrcUrl , newgrade, seqMovie));
		
			
		}
		
		return DTOlist;
	}
}
