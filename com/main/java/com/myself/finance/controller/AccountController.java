package com.myself.finance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/account")
public class AccountController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(AccountController.class);
	
	@RequestMapping("/resume")
	public String resume() {
		return "resume";
	}
}
