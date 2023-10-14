package user.dao;

import java.util.List;

import user.bean.MovieDTO;

public interface MovieDAO {

	public void movie(MovieDTO movieDTO);

	public List<MovieDTO> getSerise();

	public List<MovieDTO> getMovie();
}
