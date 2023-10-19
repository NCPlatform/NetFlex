package user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.EpisodeDTO;
import user.bean.MovieDTO;
import user.bean.NicknameDTO;
import user.dao.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	@Override
	public List<MovieDTO> findAll() {
		return userDAO.findAll();
	}

	@Override
	public List<EpisodeDTO> getEpisode(int seqMovie) {
		return userDAO.findEpisode(seqMovie);
	}

	@Override
	public List<MovieDTO> findLikedMovie(String userEmail, int seqNick) {
		return userDAO.findLikedMovie(userEmail,seqNick);
	}

	@Override
	public List<NicknameDTO> getNickname(String email) {
		return userDAO.getNickname(email);
	}

	@Override
	public List<MovieDTO> search(String value) {
		return userDAO.search(value);
	}

	@Override
	public List<MovieDTO> getSerise() {
		
		return userDAO.getSerise();
	}
	@Override
	public List<MovieDTO> getMovie() {
		// TODO Auto-generated method stub
		return userDAO.getMovie();
	}
	@Override
	public List<MovieDTO> modal(int seqMovie) {
		// TODO Auto-generated method stub
		return userDAO.modal(seqMovie);
	}
	@Override
	public List<MovieDTO> episode(int seqMovie) {
		// TODO Auto-generated method stub
		return userDAO.episode(seqMovie);
	}

}
