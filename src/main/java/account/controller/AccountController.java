package account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import account.service.AccountService;

@Controller
@RequestMapping(value="account")
public class AccountController {
	@Autowired
	private AccountService accountService;
	
	@GetMapping(value="writeForm0")
	public String writeForm0() {
		return "/account/writeForm0";
	}
	
	@PostMapping(value="writeForm1")
	public String writeForm1() {
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
	public String writeForm2() {
		return "/account/writeForm2";
	}
	
	@PostMapping(value="writeForm3")
	public String writeForm3() {
		return "/account/writeForm3";
	}
	
	@GetMapping(value="termsOfUse")
	public String termsOfUse() {
		return "/account/termsOfUse";
	}
	
	@PostMapping(value="writeForm4")
	public String writeForm4() {
		return "/account/writeForm4";
	}
	
	@GetMapping(value="writeForm4_1")
	public String writeForm4_1() {
		return "/account/writeForm4_1";
	}
	
	@GetMapping(value="writeForm4_2")
	public String writeForm4_2() {
		return "/account/writeForm4_2";
	}
	
	@GetMapping(value="writeForm4_3")
	public String writeForm4_3() {
		return "/account/writeForm4_3";
	}
	
}
