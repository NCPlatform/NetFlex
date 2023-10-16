package admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.service.AdminService;
import user.bean.MemberShipDTO;
import user.bean.ReportDTO;

@Controller
@RequestMapping("admin")
public class AdminControllerImpl {

	@Autowired
	private AdminService adminService;
	
	@GetMapping(value="")
	public String dashboard() {
		return "/Admin/index";
	}
	
	@GetMapping(value="/user")
	public String userIndex(@RequestParam(required = false, defaultValue = "1") String userPg, @RequestParam(required = false, defaultValue = "3")String userPerPg, Model model) {
		model.addAttribute("userPg", userPg);
		model.addAttribute("userPerPg", userPerPg);
		
		return "/Admin/user/index";
	}
	
	@GetMapping(value="/report")
	public String reportIndex(@RequestParam(required = false, defaultValue = "1") String pg, @RequestParam(required = false, defaultValue = "10")String perPg, Model model) {
		model.addAttribute("pg", pg);
		model.addAttribute("perPg", perPg);
		
		return "/Admin/report/index";
	}
	
	@PostMapping(value="setDashboard")
	@ResponseBody
	public Map<String,Object> dashboard(@RequestParam(required = false, defaultValue = "") String limit) {
		
		return adminService.setDashboard(limit);
	}
	
	@PostMapping(value="getReportList")
	@ResponseBody
	public Map<String,Object> list(@RequestParam String pg,@RequestParam String perPg) {
		return adminService.getReportList(pg, perPg);
	}
	
	@PostMapping(value="checkReport")
	@ResponseBody
	public void checkReport(@RequestParam String seqComment) {
		adminService.checkReport(seqComment);
	}
	
	@PostMapping(value="getMemberShip")
	@ResponseBody
	public List<MemberShipDTO> getMemberShip() {
		return adminService.getMemberShip();
	}
	
	@PostMapping(value="getUser")
	@ResponseBody
	public Map<String,Object> userList(@RequestParam String pg,@RequestParam String perPg) {
		return adminService.getUserList(pg, perPg);
	}
	
	@PostMapping(value="updateMembership")
	@ResponseBody
	public void updateMembership(@RequestParam String seqMembership, @RequestParam String name, @RequestParam String price) {
		adminService.updateMembership(seqMembership, name, price);
	}
}
