package admin.video.bean;

import java.sql.Time;
import java.util.ArrayList;
import java.util.StringTokenizer;

public class EpisodeDTO {
	private int ep, seqMovie;
	private String eptitle,epstory, runtime, thumbnail, thumbnailSrc, thumbnailSrcUrl, grade, movieSrcUrl;
	private String eplist;
	// private Time runtime;
	
	@Override
	public String toString() {
		return "epDTO : "+ep+" "+eplist+" "+seqMovie+" "+eptitle+" "+epstory+" "+runtime+" "+thumbnailSrc+" "+thumbnailSrcUrl+" "+grade+" "+movieSrcUrl;
	}
	
	public String getMovieSrcUrl() {
		return movieSrcUrl;
	}

	public void setMovieSrcUrl(String movieSrcUrl) {
		this.movieSrcUrl = movieSrcUrl;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	
	public void setThumbnail() { // 만들어진 DTO 썸네일 부를 떄
		
		if(thumbnailSrc == null) {
			thumbnailSrc = "";
		}
		if(thumbnailSrcUrl == null) {
			thumbnailSrcUrl = "";
		}
		
		if(thumbnail == null) {
			thumbnail = "";
		}
		
		if(thumbnailSrc.length()==0) {
			if(thumbnailSrcUrl.length()==0) {	
				if(thumbnail.length()== 0) {
					thumbnail = "https://cheeeeese.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0bd5faf4-018f-4750-a3f7-ea2be6bf53c0%2Fcfe9dff7-07b9-4a1c-afd2-4a2ca43915d7%2FUntitled.png?table=block&id=e831864f-8582-44ce-8425-55f95d8b5ed5&spaceId=0bd5faf4-018f-4750-a3f7-ea2be6bf53c0&width=470&userId=&cache=v2";
			
				}	
			}
		}else if(thumbnailSrc.length()>=thumbnailSrcUrl.length()) { // 기존 썸네일 값은 있든 말든
			thumbnail = thumbnailSrc;
			
		}else if(thumbnailSrcUrl.length()>thumbnailSrc.length()) {
			thumbnail = thumbnailSrcUrl;
		}
		
		
		
	}
	public void setThumbnail(int a) { // 에피소드 추가해서 DTO 집어넣을때
		
		if(thumbnailSrc == null) {
			thumbnailSrc = "";
		}
		if(thumbnailSrcUrl == null) {
			thumbnailSrcUrl = "";
		}
		
		if(thumbnail == null) {
			thumbnail = "";
		}
		
		if(thumbnail.length()==0) {
			if(thumbnailSrc.length()==0) {	
				if(thumbnailSrcUrl.length()== 0) {
					thumbnail = "https://cheeeeese.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0bd5faf4-018f-4750-a3f7-ea2be6bf53c0%2Fcfe9dff7-07b9-4a1c-afd2-4a2ca43915d7%2FUntitled.png?table=block&id=e831864f-8582-44ce-8425-55f95d8b5ed5&spaceId=0bd5faf4-018f-4750-a3f7-ea2be6bf53c0&width=470&userId=&cache=v2";
					
				}else if(thumbnailSrc.length()>=thumbnailSrcUrl.length()) { // 기존 썸네일 값은 있든 말든
					thumbnail = thumbnailSrc;
					
				}else if(thumbnailSrcUrl.length()>thumbnailSrc.length()) {
					thumbnail = thumbnailSrcUrl;
				}	
			}
		}else if(thumbnailSrc.length()>=thumbnailSrcUrl.length()) { // 기존 썸네일 값은 있든 말든
			thumbnail = thumbnailSrc;
			
		}else if(thumbnailSrcUrl.length()>thumbnailSrc.length()) {
			thumbnail = thumbnailSrcUrl;
		}
		
		
		
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
	
	public EpisodeDTO(String eptitle, String epstory, String runtime, String thumbnailSrc, String thumbnailSrcUrl, String grade, String eplist, String movieSrcUrl, int seqMovie) {
		
		this.eptitle = eptitle;
		this.epstory = epstory;
		this.runtime = runtime;
		this.thumbnailSrc = thumbnailSrc;
		this.thumbnailSrcUrl = thumbnailSrcUrl;
		this.grade = grade;
		this.eplist = eplist;
		this.seqMovie = seqMovie;
		this.movieSrcUrl = movieSrcUrl;
		this.ep = Integer.parseInt(eplist);
		
		setThumbnail();
		/*
		if(thumbnailSrc.length()>=thumbnailSrcUrl.length()) {
			this.thumbnail = thumbnailSrc;
		}else {
			this.thumbnail = thumbnailSrcUrl;
		}
		*/
	}
	
	public EpisodeDTO() {
		
		
	}
	
	public void modifyDTO() {
		if(thumbnail!=null) { // 기존 썸네일 값이 있음.(수정 요청)
			if(thumbnailSrc!=null||thumbnailSrcUrl!=null) { // 새로 입력한 값이 뭐라도 있을 때
				if(thumbnailSrcUrl.length()>0) { // url로 추가했다면
					thumbnail = thumbnailSrcUrl; // url 경로로 thumbnail을 지정하도록 함.
					System.out.println("srcUrl");
				}
				else if(thumbnailSrc.length()>0) { // 파일로 추가했다면
					thumbnail = thumbnailSrc; // 파일 경로로 thumbnail을 지정하고
					System.out.println("Src");
				}
			}
		} // 기존 썸네일 값이 없는 경우(makeList)를 통해 생성된 경우가 아닌 경우(=신규 컨텐츠) 실행되지 않는다
		System.out.println("modified ep's new thumbnail : "+ thumbnail);
		
		StringTokenizer runtimeTK = new StringTokenizer(runtime, ","); // 수정 필요
		String newruntime;
		int min = Integer.parseInt(runtimeTK.nextToken());
		if(min>=60) {
			newruntime = (min/60)+":"+(min%60)+":"+runtimeTK.nextToken();
		}else {
			newruntime = "00:"+min+":"+runtimeTK.nextToken();
		} // runtime 분 단위 변환 
		
		runtime = newruntime;
		// 기본 생성자
	}

	public ArrayList<EpisodeDTO> makeList() { // 에피소드 여러 개를 신규 추가 시 작동
		ArrayList<EpisodeDTO> DTOlist = new ArrayList<>();
		
		StringTokenizer eptitleTK = new StringTokenizer(eptitle, ",");
		StringTokenizer epstoryTK = new StringTokenizer(epstory, ",");
		StringTokenizer runtimeTK = new StringTokenizer(runtime, ","); // 수정 필요
		StringTokenizer thumbnailSrcTK = new StringTokenizer(thumbnailSrc, ",");
		StringTokenizer thumbnailSrcUrlTK = new StringTokenizer(thumbnailSrcUrl, ",");
		StringTokenizer gradeTK = new StringTokenizer(grade, ",");
		StringTokenizer eplistTK = new StringTokenizer(eplist, ",");
		StringTokenizer movieSrcUrlTK = new StringTokenizer(movieSrcUrl, ",");
		
		String neweptitle, newepstory, newruntime, newthumbnailSrc, newthumbnailSrcUrl, newgrade, neweplist, newmovieSrcUrl;
		
		while(eplistTK.hasMoreTokens()) {
			
			neweptitle = eptitleTK.nextToken(); 
			newepstory = epstoryTK.nextToken(); 
			newgrade = gradeTK.nextToken();
			neweplist = eplistTK.nextToken();
			newmovieSrcUrl = movieSrcUrlTK.nextToken();
			
			int min = Integer.parseInt(runtimeTK.nextToken());
			if(min>=60) {
				newruntime = (min/60)+":"+(min%60)+":"+runtimeTK.nextToken();
			}else {
				newruntime = "00:"+min+":"+runtimeTK.nextToken();
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
					newthumbnailSrc , newthumbnailSrcUrl , newgrade ,
					neweplist , newmovieSrcUrl, seqMovie));
		
		}
		
		return DTOlist;
	}
}
