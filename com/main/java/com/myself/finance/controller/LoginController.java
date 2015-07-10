package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.finance.entity.User;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "login";
	}
	
	@RequestMapping(value="/refer", method=RequestMethod.POST)
	@ResponseBody
	public Object login(User user) {
		return null;
	}
}
