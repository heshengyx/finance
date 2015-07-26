package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/account")
public class AccountController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "account";
	}
}
