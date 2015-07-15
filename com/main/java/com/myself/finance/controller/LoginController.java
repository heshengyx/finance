package com.myself.finance.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonMessage;
import com.myself.finance.entity.User;

@Controller
@RequestMapping("/login")
public class LoginController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(LoginController.class);

	@RequestMapping("")
	public String page() {
		return "login";
	}

	@RequestMapping(value = "/refer", method = RequestMethod.POST)
	@ResponseBody
	public Object login(User user) {
		JsonMessage jMessage = new JsonMessage();
		try {
			Subject subject = SecurityUtils.getSubject();
			UsernamePasswordToken token = new UsernamePasswordToken(
					user.getAccount(), user.getPassword());
			// token.setRememberMe(true);
			subject.login(token);
			logger.info("用户登录成功");
			jMessage.setCode(JsonMessage.SUCCESS_CODE);
			jMessage.setData("user");
		} catch (Exception e) {
			logger.error("用户登录失败", e);
			jMessage.setCode(JsonMessage.ERROR_CODE);
			jMessage.setMessage("用户登录失败");
		}
		return jMessage;
	}
}
