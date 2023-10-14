package movie.dao;

import movie.bean.MovieDTO;

import java.util.List;


public interface MovieDAO {
	public List<MovieDTO> findAll();

	public Object serise();

}
