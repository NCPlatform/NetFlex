package liked.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import liked.dao.LikedDAO;
import user.bean.LikedDTO;

public class LikedImpl implements LikedService {
	@Autowired
	private LikedDAO likedDAO;
	
	@Override
	public List<LikedDTO> liked() {
		
		return null;
	}

}
