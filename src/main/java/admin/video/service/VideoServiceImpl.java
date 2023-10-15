package admin.video.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import admin.video.bean.EpisodeDTO;
import admin.video.bean.VideoDTO;
import admin.video.dao.VideoDAO;

public class VideoServiceImpl implements VideoService{
	@Autowired
	private VideoDAO videoDAO;

	@Override
	public void upload(VideoDTO videoDTO) {
		videoDAO.upload(videoDTO);
	}

	@Override
	public void create(int seq) {
		videoDAO.create(seq);
	}

	@Override
	public int importSeq() {
		int seqMovie= videoDAO.importSeq();
		return seqMovie;
	}

	@Override
	public VideoDTO searchMovie(VideoDTO videoDTO) {
		VideoDTO resultDTO = videoDAO.searchMovie(videoDTO);
		return resultDTO;
	}

	@Override
	public void addEpisodes(EpisodeDTO epDTO) {
		videoDAO.addEpisodes(epDTO);
	}

	@Override
	public List<VideoDTO> getVideoList(String pg) {
		int pagesize = 15; // 한 페이지에 노출될 컨텐트 수
		int endNum = Integer.parseInt(pg)*pagesize-1;
		// 왠지 모르겠는데 임시로 1 안 빼고 있음. 
		// MySQL의 경우 0부터 시작하기 때문에 1을 더 빼고, Oracle은 1을 빼지 않음
		
		int startNum = endNum-(pagesize-1);
		int totalA = videoDAO.getTotalA();
		int totalP = (totalA+(pagesize-1))/pagesize;
		Map<String, Integer> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		System.out.println(pg+"\t"+startNum+"\t"+endNum);
		List<VideoDTO> list = videoDAO.getVideoList(map);
		
		return list;
	}
	
	@Override
	public List<VideoDTO> getVideoListbyName(String pg, String order) {
		int pagesize = 15; // 한 페이지에 노출될 컨텐트 수
		int endNum = Integer.parseInt(pg)*pagesize-1;
		// 왠지 모르겠는데 임시로 1 안 빼고 있음. 
		// MySQL의 경우 0부터 시작하기 때문에 1을 더 빼고, Oracle은 1을 빼지 않음
		
		int startNum = endNum-(pagesize-1);
		int totalA = videoDAO.getTotalA();
		int totalP = (totalA+(pagesize-1))/pagesize;
		Map<String, Object> map = new HashMap<>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
		map.put("order", order);
		System.out.println(pg+"\t"+startNum+"\t"+endNum);
		List<VideoDTO> list = videoDAO.getVideoListbyName(map);
		
		return list;
	}

	@Override
	public List<EpisodeDTO> getEpisodeList(String seqMovie) {
		List<EpisodeDTO> list = videoDAO.getEpisodeList(Integer.parseInt(seqMovie));
		
		return list;
	}

	
	// =========================== videoUpdateForm
	@Override
	public VideoDTO searchVideo(HashMap<String, Integer> videoMap) {
		
		VideoDTO resultDTO = videoDAO.searchVideo(videoMap);
		return resultDTO;
	}

	@Override
	public EpisodeDTO searchEpisode(HashMap<String, Integer> episodeMap) {
		
		EpisodeDTO episodeDTO = videoDAO.searchEpisode(episodeMap);
		return episodeDTO;
	}

	@Override
	public void videoUpdate(VideoDTO videoDTO) {
		videoDAO.videoUpdate(videoDTO);
	}

	@Override
	public void episodeUpdate(EpisodeDTO episodeDTO) {
		videoDAO.episodeUpdate(episodeDTO);
	}

	@Override
	public void videoDelete(int seqMovie) {
		videoDAO.videoDelete(seqMovie);
	}

	@Override
	public void episodeDelete(int seqMovie, int epNum) {
		videoDAO.episodeDelete(seqMovie, epNum);
	}

	@Override
	public void dropTable(int seqMovie) {
		videoDAO.dropTable(seqMovie);
	}

	@Override
	public List<VideoDTO> search(String value) {
		return videoDAO.search(value);
	}
}
