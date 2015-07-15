package com.myself.finance.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonMessage;
import com.myself.finance.entity.User;
import com.myself.finance.param.UserParam;
import com.myself.finance.service.UserService;

@Controller
@RequestMapping("/register")
public class RegisterController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(RegisterController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("")
	public String page() {
		return "register";
	}
	
	@RequestMapping(value="/refer", method=RequestMethod.POST)
	@ResponseBody
	public Object register(UserParam param, HttpServletRequest request) {
		JsonMessage jMessage = new JsonMessage();
		HttpSession session = request.getSession();
		String kaptchaValue = (String) session.getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
		param.setKaptchaValue(kaptchaValue);
		try {
			userService.register(param);
			logger.info("用户注册成功");
		} catch (Exception e) {
			logger.error("用户注册失败", e);
			jMessage.setCode(JsonMessage.ERROR_CODE);
			jMessage.setMessage("用户注册失败");
		}
		return jMessage;
	}
}
