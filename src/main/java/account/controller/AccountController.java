package account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import account.service.AccountService;
import member.dao.MemberDao;
import user.bean.UserDTO;

@Controller
@RequestMapping(value="account")
public class AccountController {
	
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private UserDTO userDTO;
	
	@GetMapping(value="writeForm0")
	public String writeForm0() {
		return "/account/writeForm0";
	}
	
	@PostMapping(value="writeForm1")
	public String writeForm1(@RequestParam String email, Model model) {
		
		model.addAttribute("email", email);
		
		return "/account/writeForm1";
	}
	
	@GetMapping(value="registration1")
	public String registration1() {
		return "/account/registration1";
	}
	
	@GetMapping(value="registration2")
	public String registration2() {
		return "/account/registration2";
	}
	
	@GetMapping(value="registration3")
	public String registration3() {
		return "/account/registration3";
	}
	
	@GetMapping(value="registration4")
	public String registration4() {
		return "/account/registration4";
	}
	
	@GetMapping(value="registration5")
	public String registration5() {
		return "/account/registration5";
	}
	
	@PostMapping(value="writeForm2")
	public String writeForm2(@RequestParam String email,@RequestParam String password, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		
		return "/account/writeForm2";
	}
	
	@PostMapping(value="writeForm3")
	public String writeForm3(@RequestParam String email,@RequestParam String password, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		
		return "/account/writeForm3";
	}
	
	@GetMapping(value="termsOfUse")
	public String termsOfUse() {
		return "/account/termsOfUse";
	}
	
	@PostMapping(value="writeForm4")
	public String writeForm4(@RequestParam String email,@RequestParam String password, @RequestParam String level, @RequestParam int price, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("level", level);
		model.addAttribute("price", price);
		
		return "/account/writeForm4";
	}
	
	@PostMapping(value="writeForm4_1")
	public String writeForm4_1(@RequestParam String email,@RequestParam String password, @RequestParam String level, @RequestParam int price, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("level", level);
		model.addAttribute("price", price);
		
		return "/account/writeForm4_1";
	}
	
	@PostMapping(value="writeForm4_2")
	public String writeForm4_2(@RequestParam String email,@RequestParam String password, @RequestParam String level, @RequestParam int price, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("level", level);
		model.addAttribute("price", price);
		
		return "/account/writeForm4_2";
	}
	
	
	
	@PostMapping(value="writeForm4_3")
	public String writeForm4_3(@RequestParam String email,@RequestParam String password, @RequestParam String level, @RequestParam int price, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("level", level);
		model.addAttribute("price", price);
		
		return "/account/writeForm4_3";
	}

	@PostMapping(value="writeForm5")
	public String writeForm5(@RequestParam String email,@RequestParam String password, @RequestParam String level, @RequestParam int price, Model model) {
		
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		model.addAttribute("level", level);
		model.addAttribute("price", price);
		
		return "/account/writeForm5";
	}
	
	 @RequestMapping(value = "/processUserData", method = RequestMethod.POST)
	    public String processUserData(@ModelAttribute UserDTO userDTO) {
	        // userDTO 객체에는 클라이언트에서 전송한 데이터가 자동으로 매핑됩니다.
	        // 이후 DB에 저장하거나 필요한 처리를 수행합니다.
	        
	        // 예시로, DB에 저장하는 코드
	        memberDao.write(userDTO	);
	        
	        // 다음 페이지로 리다이렉트
	        return "/account/writeForm6";
	    }
	
	@PostMapping(value="writeForm6")
	public String writeForm6() {
		return "/account/writeForm6";
	}
	
}
