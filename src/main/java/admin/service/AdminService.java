package admin.service;

import java.util.List;
import java.util.Map;

import user.bean.MemberShipDTO;

public interface AdminService {

	public Map<String,Object> getReportList(String pg, String perPg);

	public Map<String, Object> setDashboard(String limit);

	public void checkReport(String seqComment);

	public List<MemberShipDTO> getMemberShip();

	public void updateMembership(String seqMembership, String name, String price);

	public Map<String, Object> getUserList(String pg, String perPg);

}
