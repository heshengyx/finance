package com.myself.finance.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.annotation.Token;
import com.myself.common.exception.ServiceException;
import com.myself.common.message.JsonMessage;
import com.myself.common.message.JsonResult;
import com.myself.finance.entity.Account;
import com.myself.finance.entity.AccountTrade;
import com.myself.finance.entity.User;
import com.myself.finance.page.Page;
import com.myself.finance.param.AccountParam;
import com.myself.finance.param.AccountTradeQueryParam;
import com.myself.finance.service.AccountService;
import com.myself.finance.service.AccountTradeService;

@Controller
@RequestMapping("/home/capital")
public class CapitalController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(CapitalController.class);
	
	@Autowired
	private AccountService accountService;
	
	@Autowired
	private AccountTradeService accountTradeService;
	
	@RequestMapping("/trade")
	public String trade() {
		return "trade";
	}
	
	@RequestMapping("/trade/list")
	@ResponseBody
	public Object list(AccountTradeQueryParam param) {
		User user = getCurrentUser();
		param.setUserId(user.getId());
		Page<AccountTradeQueryParam> pageResult = new Page<AccountTradeQueryParam>();
		pageResult.setPage(param.getPage());
		pageResult.setRows(param.getLength());
		pageResult.setEntity(param);
		List<AccountTrade> datas = accountTradeService.list(pageResult);
		
		JsonResult<AccountTrade> jResult = new JsonResult<AccountTrade>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
	
	@RequestMapping("/deposit")
	@Token(save=true)
	public String deposit(Model model) {
		User user = getCurrentUser();
		Account account = new Account();
		account.setUserId(user.getId());
		account = accountService.getData(account);
		model.addAttribute("account", account);
		return "deposit";
	}
	
	
	@RequestMapping(value = "/deposit/refer", method = RequestMethod.POST)
	@ResponseBody
	@Token(remove=true)
	public Object deposit(AccountParam param) {
		JsonMessage jMessage = new JsonMessage();
		User user = getCurrentUser();
		param.setUserId(user.getId());
		
		try {
			accountService.deposit(param);
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
	
	@RequestMapping("/withdraw")
	public String withdraw(Model model) {
		User user = getCurrentUser();
		Account account = new Account();
		account.setUserId(user.getId());
		account = accountService.getData(account);
		model.addAttribute("account", account);
		return "withdraw";
	}
	
	@RequestMapping(value = "/withdraw/refer", method = RequestMethod.POST)
	@ResponseBody
	public Object withdraw(AccountParam param) {
		JsonMessage jMessage = new JsonMessage();
		User user = getCurrentUser();
		param.setUserId(user.getId());
		
		try {
			accountService.withdraw(param);
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
