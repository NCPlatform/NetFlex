package movie.dao;

import java.util.List;

import movie.bean.EpisodeDTO;
import movie.bean.MovieDTO;


public interface MovieDAO {
	List<MovieDTO> findAll();

	List<EpisodeDTO> findEpisode(int seqMovie);
	List<MovieDTO> findLikedMovie(String email, int seqNick);
}
