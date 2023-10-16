package admin.video.service;

import java.util.HashMap;
import java.util.List;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;

public interface VideoService {

	public void upload(VideoDTO videoDTO);

	public void create(int seq);

	public int importSeq();
	
	public VideoDTO searchMovie(VideoDTO videoDTO);
	
	public void addEpisodes(EpisodeDTO epDTO);

	public List<VideoDTO> getVideoList(String pg);

	public List<EpisodeDTO> getEpisodeList(String seqMovie);


	public VideoDTO searchVideo(HashMap<String, Integer> videoMap);

	public void videoUpdate(VideoDTO videoDTO);

	public EpisodeDTO searchEpisode(HashMap<String, Integer> episodeMap);

	public void episodeUpdate(EpisodeDTO episodeDTO);

	public void dropTable(int seqMovie);

	public void videoDelete(int seqMovie);

	public void episodeDelete(int seqMovie, int epNum);

	public List<VideoDTO> getVideoListbyName(String pg, String order);

	public List<VideoDTO> search(String value);

}
