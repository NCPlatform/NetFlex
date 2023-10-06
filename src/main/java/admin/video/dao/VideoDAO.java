package admin.video.dao;

import admin.video.bean.VideoDTO;

public interface VideoDAO {

	public void upload(VideoDTO videoDTO);

	public void create(int seq);

	public VideoDTO searchMovie(VideoDTO videoDTO);

}
