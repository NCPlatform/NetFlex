package account.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import account.dao.AccountDAO;

@Controller
@RequestMapping(value="account")
public class AccountController {
	@Autowired
	private AccountDAO accountDAO;
	
	@GetMapping(value="")
	public String index() {
		return "/Account/index";
	}
	
}
