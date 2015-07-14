package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myself.finance.entity.User;

@Controller
@RequestMapping("/register")
public class RegisterController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "register";
	}
	
	@RequestMapping(value="/refer", method=RequestMethod.POST)
	public Object register(User user) {
		return null;
	}
}
