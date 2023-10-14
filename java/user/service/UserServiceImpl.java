package user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.MovieDTO;
import user.dao.MovieDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private MovieDAO movieDAO;
	
	@Override
	public void movie(MovieDTO movieDTO) {
		movieDAO.movie(movieDTO);
	}
	@Override
	public List<MovieDTO> getSerise() {
		
		return movieDAO.getSerise();
	}
	@Override
	public List<MovieDTO> getMovie() {
		// TODO Auto-generated method stub
		return movieDAO.getMovie();
	}
}
