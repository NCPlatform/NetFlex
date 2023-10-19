package admin.dao;

import java.util.List;
import java.util.Map;

import user.bean.MemberShipDTO;
import user.bean.ReportDTO;
import user.bean.UserDTO;

public interface AdminDAO {

	public List<ReportDTO> getReportList(String limit);

	public  int getCntUser();

	public int getCntMovie();

	public int getCntReport();

	public List<ReportDTO> getReportListDetail(Map<String, Object> map);

	public void checkReport(String seqComment);

	public void checkComment(String seqComment);

	public List<MemberShipDTO> getMemberShip();

	public void updateMembership(Map map);

	public List<UserDTO> getUserList(Map<String, Object> map);

	public int getCntNickname();

}
