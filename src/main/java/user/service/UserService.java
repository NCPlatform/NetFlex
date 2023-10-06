package user.service;

import java.util.Map;

import org.springframework.stereotype.Service;

import user.bean.MovieDTO;

@Service
public interface UserService {

	public void movie(MovieDTO movieDTO);

	public Map<String, Object> movieList(String pg);

}
