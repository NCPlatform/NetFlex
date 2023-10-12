package admin.video.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;

public interface VideoDAO {

	public void upload(VideoDTO videoDTO);

	public void create(int seq);

	public int importSeq();
	
	public VideoDTO searchMovie(VideoDTO videoDTO);
	
	public void addEpisodes(EpisodeDTO epDTO);

	public int getTotalA();

	public List<VideoDTO> getVideoList(Map<String, Integer> map);

	public List<EpisodeDTO> getEpisodeList(int seqMovie);

	public VideoDTO searchVideo(HashMap<String, Integer> videoMap);

	public EpisodeDTO searchEpisode(HashMap<String, Integer> episodeMap);
}
