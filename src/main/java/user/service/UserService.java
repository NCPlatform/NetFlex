package user.service;

import java.util.List;

import user.bean.EpisodeDTO;
import user.bean.MovieDTO;
import user.bean.NicknameDTO;

public interface UserService {

	public List<MovieDTO> findAll();

	public List<EpisodeDTO> getEpisode(int seqMovie);

	public List<MovieDTO> findLikedMovie(String userEmail, int i);

	public List<NicknameDTO> getNickname(String email);

	public List<MovieDTO> search(String value);

	public List<MovieDTO> getMovie();

	public List<MovieDTO> episode(int parseInt);

	public List<MovieDTO> getSerise();

	public List<MovieDTO> modal(int parseInt);

}
