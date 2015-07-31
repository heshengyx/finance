package com.myself.finance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.exception.ServiceException;
import com.myself.common.message.JsonMessage;
import com.myself.finance.entity.User;
import com.myself.finance.param.AccountDetailParam;
import com.myself.finance.service.AccountDetailService;

@Controller
@RequestMapping("/home/account")
public class AccountController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(AccountController.class);
	
	@Autowired
	private AccountDetailService accountDetailService;
	
	@RequestMapping(value = "/deposit", method = RequestMethod.POST)
	@ResponseBody
	public Object deposit(AccountDetailParam param) {
		JsonMessage jMessage = new JsonMessage();
		User user = getCurrentUser();
		try {
			param.setUserId(user.getId());
			accountDetailService.save(param);
		} catch (Exception e) {
			jMessage.setCode(JsonMessage.ERROR_CODE);
			if (e instanceof ServiceException) {
				jMessage.setMessage(e.getMessage());
			} else {
				jMessage.setMessage("系统异常");
			}
			logger.error(jMessage.getMessage(), e);
		}
		return jMessage;
	}
}
