package movie.service;

import movie.bean.MovieDTO;

import java.util.List;

public interface MovieService {

	public List<MovieDTO> findAll();

	public Object serise();
}
