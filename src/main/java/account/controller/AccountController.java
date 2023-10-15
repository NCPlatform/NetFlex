package account.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import account.service.AccountService;
import user.bean.NicknameDTO;
import user.bean.UserInsertDTO;

@Controller
@RequestMapping(value="account")
public class AccountController {
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private JavaMailSender mailSender;
	
	private int randoInt;
	
	@GetMapping(value="")
	public String index() {
		return "/Account/index";
	}
	
	@GetMapping(value="writeForm1")
	public String writeForm1(HttpSession httpSession) {

		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/signIn/Form01";
	}
	
	@PostMapping(value="writeForm2")
	public String writeForm2(HttpSession httpSession,@RequestParam String password) {
		httpSession.setAttribute("password", password);
		
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/signIn/Form02";
	}
	
	@GetMapping(value="writeForm3")
	public String writeForm3(HttpSession httpSession) {
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/signIn/Form03";
	}
	
	@PostMapping(value="writeForm4")
	public String writeForm4(HttpSession httpSession,@RequestParam String type,@RequestParam String level) {
		httpSession.setAttribute("type", type);
		httpSession.setAttribute("seqMembership", level);
		
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/signIn/Form04";
	}
	
	@GetMapping(value="writeForm5")
	public String writeForm5(HttpSession httpSession) {
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/signIn/Form05";
	}
	
	@GetMapping(value="logout")
	@ResponseBody
	public void logout(HttpSession httpSession) {
		httpSession.invalidate();
	}
	
	@PostMapping(value="signin")
	@ResponseBody
	public void signin(HttpSession httpSession, @RequestParam String email, @RequestParam String password,@RequestParam String name, @RequestParam String age, @RequestParam String phone, @RequestParam String seqMembership) {
		
		httpSession.setAttribute("name", name);
		
		UserInsertDTO userDTO = new UserInsertDTO();
		userDTO.setEmail(email);
		userDTO.setPassword(password);
		userDTO.setName(name);
		userDTO.setAge(Integer.parseInt(age));
		userDTO.setPhone(phone);
		userDTO.setSeqMembership(Integer.parseInt(seqMembership));
		
		accountService.insertUser(userDTO);
	}
	
	@PostMapping(value="socialSignin")
	public void socialSignin(HttpSession httpSession, @RequestParam String email, @RequestParam String name,@RequestParam String age) {
		
		httpSession.setAttribute("name", name);
		httpSession.setAttribute("email", email);
		httpSession.setAttribute("age", age);
	}
	
	@PostMapping(value="insertNickname")
	@ResponseBody
	public void insertNickname(HttpSession httpSession, @RequestParam String email, @RequestParam String nickname1, @RequestParam String genrecode11, @RequestParam(required = false, defaultValue = "0") String genrecode12, @RequestParam(required = false, defaultValue = "0") String genrecode13, @RequestParam(required = false, defaultValue = "0") String nickname2, @RequestParam(required = false, defaultValue = "0") String genrecode21, @RequestParam(required = false, defaultValue = "0") String genrecode22, @RequestParam(required = false, defaultValue = "0") String genrecode23, @RequestParam(required = false, defaultValue = "0") String nickname3, @RequestParam(required = false, defaultValue = "0") String genrecode31, @RequestParam(required = false, defaultValue = "0") String genrecode32, @RequestParam(required = false, defaultValue = "0") String genrecode33, @RequestParam(required = false, defaultValue = "0") String nickname4, @RequestParam(required = false, defaultValue = "0") String genrecode41, @RequestParam(required = false, defaultValue = "0") String genrecode42, @RequestParam(required = false, defaultValue = "0") String genrecode43 ) {
		List<NicknameDTO> list = new ArrayList<NicknameDTO>();
		NicknameDTO nicknameDTO = new NicknameDTO();
		nicknameDTO.setEmail(email);
		nicknameDTO.setNickname(nickname1);
		nicknameDTO.setGenrecode1(Integer.parseInt(genrecode11));
		nicknameDTO.setGenrecode2(Integer.parseInt(genrecode12));
		nicknameDTO.setGenrecode3(Integer.parseInt(genrecode13));
		
		list.add(nicknameDTO);
		
		if(!nickname2.equals("0")) {
			NicknameDTO nicknameDTO2 = new NicknameDTO();
			nicknameDTO2.setEmail(email);
			nicknameDTO2.setNickname(nickname2);
			nicknameDTO2.setGenrecode1(Integer.parseInt(genrecode21));
			nicknameDTO2.setGenrecode2(Integer.parseInt(genrecode22));
			nicknameDTO2.setGenrecode3(Integer.parseInt(genrecode23));
			list.add(nicknameDTO2);
		}
		if(!nickname3.equals("0")) {
			NicknameDTO nicknameDTO3 = new NicknameDTO();
			nicknameDTO3.setEmail(email);
			nicknameDTO3.setNickname(nickname3);
			nicknameDTO3.setGenrecode1(Integer.parseInt(genrecode31));
			nicknameDTO3.setGenrecode2(Integer.parseInt(genrecode32));
			nicknameDTO3.setGenrecode3(Integer.parseInt(genrecode33));
			
			list.add(nicknameDTO3);
		}
		if(!nickname4.equals("0")) {
			NicknameDTO nicknameDTO4 = new NicknameDTO();
			nicknameDTO4.setEmail(email);
			nicknameDTO4.setNickname(nickname4);
			nicknameDTO4.setGenrecode1(Integer.parseInt(genrecode41));
			nicknameDTO4.setGenrecode2(Integer.parseInt(genrecode42));
			nicknameDTO4.setGenrecode2(Integer.parseInt(genrecode43));
			
			list.add(nicknameDTO4);
		}
		
		accountService.insertNickname(list);
		
		httpSession.setAttribute("login", "true");
	}
	
	@GetMapping(value="createNickname")
	public String createNickname(HttpSession httpSession) {
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}
		
		return "/Account/nickname/createNickname";
	}
	
	@GetMapping(value="loginForm")
	public String loginForm() {
		return "/Account/login/loginForm";
	}
	
	@GetMapping(value="loginOk")
	public String loginOk() {
		return "/Account/login/loginOk";
	}
	
	@GetMapping(value="loginHelp") 
	 public String loginHelp() { 
		return "/Account/login/loginHelp"; 
	}
	
	@PostMapping("/login")
	@ResponseBody
	public int login(HttpSession httpSession, @RequestParam String email, @RequestParam String password) {
		httpSession.setAttribute("login", "true");
		httpSession.setAttribute("email", email);
		return accountService.login(email, password);
	}
	
	@PostMapping("/checkEmail")
	@ResponseBody
	public int checkEmail(HttpSession httpSession, @RequestParam String email) {
		return accountService.checkEmail(email);
	}
	
	@PostMapping("/socialLogin")
	@ResponseBody
	public void socialLogin(HttpSession httpSession, @RequestParam String email) {
		httpSession.setAttribute("login", "true");
		httpSession.setAttribute("email", email);
	}
	
	@GetMapping(value="find_email_form")
	public String find_email_form() {
		return "/Account/login/find_email_form";
		
	}
	
	@GetMapping(value="find_password_form")
	public String findPassword() {
		return "/Account/login/find_password_form";
		
	}
	
	@PostMapping("/find_email")
	@ResponseBody
	public String find_email(@RequestParam String name, @RequestParam int age){
		return accountService.find_email(name, age);
	}
	
	@PostMapping("/find_password")
	@ResponseBody
	public String find_password(@RequestParam String email, @RequestParam String name){
		return accountService.find_password(email, name);
	}
	
	@PostMapping(value = "emailVerify")
	public String requestEmail(HttpSession httpSession,@RequestParam String email) {
		httpSession.setAttribute("email", email);
		
		if(httpSession.getAttribute("email") == null) {
			return "/Account/fail/sessionExpiration";
		}else {
			return "/Account/email/emailverify";
		}
	}
	
	@PostMapping(value = "sendEmail")
	@ResponseBody
	public void sendEmail(@RequestParam String email, HttpServletRequest request){
			Random random = new Random();
			int verify = random.nextInt(1000000); //난수
			randoInt = verify;
			
			
			String subject = "[NETFLEX] NETFLEX 가입 인증번호를 확인하세요";
			String content = "<!DOCTYPE html><html><head><meta charset = \"UTF-8\"> <style>table{width:750px;background-color: #F8F8F8; }tr:nth-child(1){background-color: #121212; }#logo{width: 170px;}#verif{font-size: 1.7em; margin-left: 25px; margin-top: 50px; }#blank1{height: 80px;}#center{text-align: center; }#number{font-size: 3em;font-style: bold; border: 1px solid gray; padding: 20px 50px 20px 50px; background-color: white; }#blank2{height: 180px;}#foot{background-color: #121212; height: 70px;}#footmessage{color: #898989;padding-right: 20px; text-align: right; }#right{text-align: right; }#blank3{height: 30px;}</style></head><body><div id = 'disp'> <table><tr><td><img src = 'https://cheeeeese.notion.site/image/https%3A%2F%2Fprod-files-secure.s3.us-west-2.amazonaws.com%2F0bd5faf4-018f-4750-a3f7-ea2be6bf53c0%2Feafa3ea2-fd3c-43b1-933b-46374e826abb%2FUntitled.png?table=block&id=75a9985e-f406-45f0-8d95-03a509ab3fd0&spaceId=0bd5faf4-018f-4750-a3f7-ea2be6bf53c0&width=2000&userId=&cache=v2' id = 'logo'></td> </tr><tr><td><br><span id = 'verif'>요청하신 인증 번호입니다 : </span> </td></tr><tr><td><div id = 'blank1'></div></td> </tr><tr id = 'num'><td id = 'center'> <br><div id = 'blank3'></div> <span id = 'number'>"+verify+"</span><br>  </td></tr><tr><td><div id = 'blank2'></div></td> </tr><tr><td id = 'right'><div id = 'foot'> <br><span id = 'footmessage'>&copy; project NETFLEX 2023</span> </div></td></tr></table></div></body></html>";
	        String from = "NETFLEX <project.netflex@gmail.com>";
	        String to = "<"+email+">";
	        
	        try 
	        {
	            MimeMessage mail = mailSender.createMimeMessage();
	            MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8");
	            
	            mailHelper.setFrom(from);
	            mailHelper.setTo(to);
	            mailHelper.setSubject(subject);
	            mailHelper.setText(content, true);
	            
	            mailSender.send(mail);
	        } 
	        catch(Exception e) 
	        {
	            e.printStackTrace();
	        }
	        
		
	}
	
	@PostMapping(value = "verifyEmail")
	@ResponseBody
	public String verifyEmail(@RequestParam String verif, HttpServletRequest request){
		int requestedVerif = Integer.parseInt(verif);
		
		String scs = "";
		if(randoInt == requestedVerif) {
			// 세션 태우기
			scs = "yes";
		}else {
			scs = "no";
		}
		
		request.setAttribute("scs", scs);
		return scs;
	}
	
}
