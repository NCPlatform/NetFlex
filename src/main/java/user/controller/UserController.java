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
	
	//로그인창 이동
	@GetMapping(value="loginForm")
	public String loginForm() {
		return "/user/loginForm";
	}
	
	//로그인창내_무엇을 도와드릴까요?-이메일_비밀번호찾기 페이지 연결페이지
	 @GetMapping(value="loginHelp") 
	 public String loginHelp() { 
		return "/user/loginHelp"; 
	}
	 
	//회원가입창 연결_비어있음
	@GetMapping(value="writeForm")
	public String writeForm() {
		return "/user/writeForm";
	}
	
	//로그인
	@PostMapping("/login")
	@ResponseBody
	public int login2(HttpSession httpSession, @RequestParam String email, @RequestParam String password) {
		httpSession.setAttribute("email", email);
		
		System.out.println("loginForm의 요청처리");		
		return service.login(email, password);
	}

	//이메일 찾기 폼 페이지
	@GetMapping(value="find_email_form")
	public String find_email_form() {
		return "/user/find_email_form";
		
	}
	
	//비밀번호 찾기 폼 페이지
	@GetMapping(value="find_password_form")
	public String findPassword() {
		return "/user/find_password_form";
		
	}
		
			
	// 이메일 찾기 결과 페이지 이동
	@PostMapping("/find_email")
	@ResponseBody
	public String find_email(@RequestParam String name, @RequestParam int age){
	
		System.out.println("find_emailForm의 요청처리");
			return service.find_email(name, age);
	}
	
	// 비밀번호 찾기 결과 페이지 이동
	@PostMapping("/find_password")
	@ResponseBody
	public String find_password(@RequestParam String email, @RequestParam String name){
		
		System.out.println("find_password_form의 요청 처리");
			return service.find_password(email, name);
	}
	
	//로그인 성공시 페이지 (미구현)
	@GetMapping(value="loginOk")
	public String loginOk() {
		return "/user/loginOk";
	}
	
	//로그인 실패시 페이지 (미구현)
	@GetMapping(value="loginFail")
	public String loginFail() {
		return "/user/loginFail";
	}

}
