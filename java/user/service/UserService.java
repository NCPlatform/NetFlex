package user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import user.bean.MovieDTO;

@Service
public interface UserService {

	public void movie(MovieDTO movieDTO);

	public List<MovieDTO> getSerise();

	public List<MovieDTO> getMovie();
}
