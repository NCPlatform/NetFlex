package admin.video.service;

import org.springframework.beans.factory.annotation.Autowired;

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
	public VideoDTO searchMovie(VideoDTO videoDTO) {
		VideoDTO videoDTO2 = videoDAO.searchMovie(videoDTO);
		return videoDTO;
	}
}
