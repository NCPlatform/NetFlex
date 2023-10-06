package user.service;

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

}
