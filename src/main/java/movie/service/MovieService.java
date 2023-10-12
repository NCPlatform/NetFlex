package movie.service;

import movie.bean.MovieDTO;

import java.util.List;

public interface MovieService {

	List<MovieDTO> findAll();
}
