package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/register")
public class RegisterController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "register";
	}
}
