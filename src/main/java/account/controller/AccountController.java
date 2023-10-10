package account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JacksonInject;

import account.service.AccountService;
import user.bean.UserDTO;

@Controller
@RequestMapping(value="account")
public class AccountController {
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
	
	@PostMapping(value="writeForm6")
	public String writeForm6() {
		return "/account/writeForm6";
	}
	
}
