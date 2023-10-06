package user.service;

import org.springframework.stereotype.Service;

import user.bean.MovieDTO;

@Service
public interface UserService {

	public void movie(MovieDTO movieDTO);

}
