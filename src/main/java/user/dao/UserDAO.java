package user.dao;

import java.util.List;

import user.bean.EpisodeDTO;
import user.bean.MovieDTO;
import user.bean.NicknameDTO;

public interface UserDAO {

	public List<MovieDTO> findAll();

	public List<EpisodeDTO> findEpisode(int seqMovie);

	public List<MovieDTO> findLikedMovie(String userEmail, int seqNick);

	public List<NicknameDTO> getNickname(String email);

	public List<MovieDTO> search(String value);

	public List<MovieDTO> getSerise();

	public List<MovieDTO> getMovie();

	public List<MovieDTO> modal(int seqMovie);

	public List<MovieDTO> episode(int seqMovie);

}
