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
		List<EpisodeDTO> episode = movieDAO.findEpisode(seqMovie);
		System.out.println("episode = " + episode);
		return episode;
	}

}
