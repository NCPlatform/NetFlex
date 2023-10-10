package admin.video.service;

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
}
