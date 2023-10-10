package admin.video.service;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;

public interface VideoService {

	public void upload(VideoDTO videoDTO);

	public void create(int seq);

	public int importSeq();
	
	public VideoDTO searchMovie(VideoDTO videoDTO);
	
	public void addEpisodes(EpisodeDTO epDTO);

}