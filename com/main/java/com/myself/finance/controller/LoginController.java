package com.myself.finance.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myself.finance.entity.User;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "login";
	}
	
	@RequestMapping(value="/refer", method=RequestMethod.POST)
	public String login(User user) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(
				user.getAccount(), user.getPassword());
		//token.setRememberMe(true);
		subject.login(token);
		return "redirect:/user";
	}
}
