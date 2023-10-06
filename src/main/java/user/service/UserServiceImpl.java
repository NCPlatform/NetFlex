package user.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import user.bean.MovieDTO;
import user.bean.UserPaging;
import user.dao.MovieDAO;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private MovieDAO movieDAO;
	
	@Autowired
	private UserPaging userPaging; 
	
	@Override
	public void movie(MovieDTO movieDTO) {
		movieDAO.movie(movieDTO);
		
	}
	
	@Override
	public Map<String, Object> movieList(String pg){
		
		//1페이지당 3개씩
		
		int endNum = Integer.parseInt(pg) * 3;
		int startNum = endNum - 2;
				
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);
				
		//DB
		List<MovieDTO> list = movieDAO.movieList(map);
		//System.out.println(list);
				
		//페이징 처리
		int totalA = movieDAO.getTotalA(); //총 글 수
				
		userPaging.setCurrentPage(Integer.parseInt(pg));
		userPaging.setPageBlock(3);
		userPaging.setPageSize(3);
		userPaging.setTotalA(totalA);
				
		userPaging.makePagingHTML();
				
		Map<String, Object> map2= new HashMap<String, Object>();
		map2.put("list", list);
		map2.put("userPaging", userPaging);
				
		return map2;
	}
}
