package movie.service;

import lombok.RequiredArgsConstructor;
import movie.bean.EpisodeDTO;
import movie.bean.MovieDTO;
import movie.dao.MovieDAO;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MovieServiceImpl implements MovieService {
	

	private final MovieDAO movieDAO;
	
	@Override
	public List<MovieDTO> findAll() {
		return movieDAO.findAll();
	}

	@Override
	public List<EpisodeDTO> getEpisode(int seqMovie) {
		return movieDAO.findEpisode(seqMovie);
	}
	@Override
	public List<MovieDTO> findLikedMovie(String email, int seqNick) {
		return movieDAO.findLikedMovie(email,seqNick);
	}

}
