package member.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.dao.MemberDao;
import user.bean.MembershipDTO;
import user.bean.UserDTO;

@Service
public class MemberServiceImpl implements MemberService {
	
	 @Autowired
	 private MemberDao memberDao; // 필요한 변수 추가

	    public void setMemberDao(MemberDao memberDao) {
	        this.memberDao = memberDao;
	    }

	    @Override
	    public UserDTO listMembership() {
	    	List<MembershipDTO> membershipList = memberDao.listMembership();
	    	
	    	for (MembershipDTO membershipDTO : membershipList) {
	    		
	        String quality = membershipDTO.getQuality();
	        String resolution = membershipDTO.getResolution();
	        String type = membershipDTO.getType();
	        int price = membershipDTO.getPrice();
	        // 원하는 작업 수행
	    	}
	        return null;
	    	
	    	
	    	
	    }
	    
	    
	    
	    
	    
	    
	    
	    
	   @Override
	    public void registMailAuth(String mail, String authKey) throws BizNotEffectedException {
	        UserDTO userDTO= memberDao.getMailAuth(mail);
	        if(userDTO==null)memberDao.insertMailAuth(mail, authKey);
	        else {
	        	memberDao.updateMailAuth(mail, authKey);
	        }
	    }


	    @Override
	    public void authKeyCompare(UserDTO userDTO) throws BizNotEffectedException, BizPasswordNotMatchedException {
	    	UserDTO dto=memberDao.getMailAuth(userDTO.getMail()); //왠만하면 null안나옴. 자식창에서 확인바로누르면.
	      
	    	
	        if(!dto.getAuthKey().equals(userDTO.getAuthKey())) {
	            throw new BizPasswordNotMatchedException();
	            //자식창에서 입력한 authKey가 다르면
	        }
	        if(dto.getAuthKey().equals(userDTO.getAuthKey())) {  //인증번호 제대로 입력했으면
	            int cnt=memberDao.completeAuth(userDTO.getMail());
	            if(cnt==0) throw new BizNotEffectedException();
	        }
	    }

	    @Override
	    public int isMailAuthed(String mail) {
	    	UserDTO userDTO=memberDao.getMailAuth(mail);
	        if(userDTO==null) return 0;
	        return userDTO.getIsAuth();
	    }
}
