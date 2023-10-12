package movie.dao;

import movie.bean.MovieDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface MovieDAO {
	List<MovieDTO> findAll();

}
