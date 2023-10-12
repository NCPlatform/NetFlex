package user.controller;

import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.extern.slf4j.*;
import user.bean.UserDTO;
import user.service.UserServiceImpl;
//import user.service.UserService;

@Controller
@RequestMapping(value="user")
public class UserController {

	@Autowired
	private UserServiceImpl service;
	
	@GetMapping(value="loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}
	
	
	 @GetMapping(value="loginHelp") 
	 public String loginHelp() { 
		return "/user/loginHelp"; 
	}
	 
	
	@GetMapping(value="writeForm")
	public String writeForm() {
		return "/user/writeForm";
	}

	@GetMapping(value="find_email_form")
	public String find_email_form() {
		return "/user/find_email_form";
		
	}
	
	@GetMapping(value="find_password_form")
	public String findPassword() {
		return "/user/find_password_form";
		
	}
		
	//로그인
	@PostMapping("/login")
	@ResponseBody
	public int login2(HttpSession httpSession, @RequestParam String email, @RequestParam String password) {
		httpSession.setAttribute("email", email);
		
		System.out.println("loginForm의 요청처리");		
			return service.login(email, password);
	}
			
	// 아이디 찾기
	@PostMapping("/find_email")
	@ResponseBody
	public String find_email(@RequestParam String name, @RequestParam int age){
	
		System.out.println("find_emailForm의 요청처리");
			return service.find_email(name, age);
	}
	
// 비밀번호 찾기 
	@PostMapping("/find_password")
	@ResponseBody
	public String find_password(@RequestParam String email, @RequestParam String name){
		
		System.out.println("find_password_form의 요청 처리");
			return service.find_password(email, name);
	}
	
	@GetMapping(value="loginOk")
	public String loginOk() {
		return "/user/loginOk";
	}
	
	@GetMapping(value="loginFail")
	public String loginFail() {
		return "/user/loginFail";
	}

	/*
	 * @RequestMapping(value="/callback", method=RequestMethod.GET) public String
	 * callBack(){ return "callback"; }
	 */
    
	/*
	 * @RequestMapping(value="naverSave", method=RequestMethod.POST)
	 * public @ResponseBody String naverSave(@RequestParam("n_age") String
	 * n_age, @RequestParam("n_birthday") String
	 * n_birthday, @RequestParam("n_email") String
	 * n_email, @RequestParam("n_gender") String n_gender, @RequestParam("n_id")
	 * String n_id, @RequestParam("n_name") String
	 * n_name, @RequestParam("n_nickName") String n_nickName) {
	 * System.out.println("#############################################");
	 * System.out.println(n_age); System.out.println(n_birthday);
	 * System.out.println(n_email); System.out.println(n_gender);
	 * System.out.println(n_id); System.out.println(n_name);
	 * System.out.println(n_nickName);
	 * System.out.println("#############################################");
	 * 
	 * NaverVo naver = new NaverVo(); naver.setN_age(n_age);
	 * naver.setN_birthday(n_birthday); naver.setN_email(n_email);
	 * naver.setN_gender(n_gender); naver.setN_id(n_id); naver.setN_name(n_name);
	 * naver.setN_nickName(n_nickName);
	 * 
	 * 
	 * System.out.println("zzzzz =" +naver.getN_age());
	 * 
	 * String result = "no";
	 * 
	 * if(naver!=null) { result = "ok"; }
	 * 
	 * return result;
	 * 
	 * }
	 */
}
