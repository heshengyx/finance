package com.myself.finance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.myself.finance.entity.Account;
import com.myself.finance.entity.User;
import com.myself.finance.service.AccountService;

@Controller
@RequestMapping("/home")
public class HomeController extends BaseController {

	@Autowired
	private AccountService accountService;
	
	@RequestMapping("")
	public String page(Model model) {
		User user = getCurrentUser();
		Account account = new Account();
		account.setUserId(user.getId());
		account = accountService.getData(account);
		model.addAttribute("account", account);
		return "home";
	}
}
