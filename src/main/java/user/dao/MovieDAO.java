package user.dao;

import java.util.List;
import java.util.Map;

import user.bean.MovieDTO;

public interface MovieDAO {

	public void movie(MovieDTO movieDTO);

	public List<MovieDTO> movieList(Map<String, Integer> map);

	public int getTotalA();

}
