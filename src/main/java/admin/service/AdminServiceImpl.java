package admin.service;

import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.dao.AdminDAO;
import user.bean.MemberShipDTO;
import user.bean.Paging;
import user.bean.ReportDTO;
import user.bean.UserDTO;

@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private Paging paging;

	@Override
	public Map<String,Object> getReportList(String pg, String perPg) {
		
		int endNum = Integer.parseInt(perPg) * Integer.parseInt(pg);
		int startNum = endNum - Integer.parseInt(perPg);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("startNum", startNum);
		map.put("endNum", perPg);
		
		List<ReportDTO> list = adminDAO.getReportListDetail(map);
		
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(3);
		paging.setTotalA(adminDAO.getCntReport());
		paging.setPageSize(Integer.parseInt(perPg));
		paging.makePagingHTML();
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("list", list);
		map2.put("paging", paging.getPagingHTML());
		
		return map2;
	}

	@Override
	public Map<String, Object> setDashboard(String limit) {
		Map<String,Object> map = new HashMap<String,Object>();
		
		List<ReportDTO> list = adminDAO.getReportList(limit);
		int cntUser = adminDAO.getCntUser();
		int cntMovie = adminDAO.getCntMovie();
		int cntReport = adminDAO.getCntReport();
		
		map.put("list", list);
		map.put("cntUser", cntUser);
		map.put("cntMovie", cntMovie);
		map.put("cntReport", cntReport);
		
		return map;
	}

	@Override
	public void checkReport(String seqComment) {
		adminDAO.checkReport(seqComment);
		adminDAO.checkComment(seqComment);
	}

	@Override
	public List<MemberShipDTO> getMemberShip() {
		return adminDAO.getMemberShip();
	}

	@Override
	public void updateMembership(String seqMembership, String name, String price) {
		Map map = new HashMap();
		map.put("seq", seqMembership);
		map.put("name", name);
		map.put("price", price);
		adminDAO.updateMembership(map);
	}

	@Override
	public Map<String, Object> getUserList(String pg, String perPg) {
		int endNum = Integer.parseInt(perPg) * Integer.parseInt(pg);
		int startNum = endNum - Integer.parseInt(perPg);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("startNum", startNum);
		map.put("endNum", perPg);
		
		List<UserDTO> list = adminDAO.getUserList(map);
		
		SimpleDateFormat sDate = new SimpleDateFormat("yyyy-MM-dd");
		
		for(UserDTO dto : list) {
			dto.setStartDateString(sDate.format(dto.getStartDate()));
			dto.setEndDateString(sDate.format(dto.getEndDate()));
		}
		
		paging.setCurrentPage(Integer.parseInt(pg));
		paging.setPageBlock(3);
		paging.setTotalA(adminDAO.getCntNickname());
		paging.setPageSize(Integer.parseInt(perPg));
		paging.makePagingHTML();
		
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("list", list);		
		map2.put("paging", paging.getPagingHTML());
		
		return map2;
	}
}
