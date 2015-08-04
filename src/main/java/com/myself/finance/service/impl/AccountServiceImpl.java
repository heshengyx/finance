package com.myself.finance.service.impl;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.exception.ServiceException;
import com.myself.common.utils.MoneyUtil;
import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.AccountDao;
import com.myself.finance.dao.AccountTradeDao;
import com.myself.finance.entity.Account;
import com.myself.finance.entity.AccountTrade;
import com.myself.finance.param.AccountParam;
import com.myself.finance.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	private final static Logger logger = LoggerFactory
			.getLogger(AccountServiceImpl.class);
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private AccountTradeDao accountDetailDao;
	
	public void save(Account param) {
		param.setId(UIDGeneratorUtil.getUID());
		param.setStatus("1");
		param.setCreateTime(new Date());
		accountDao.save(param);
	}

	public void update(Account param) {
		
	}

	public void delete(Account param) {
		
	}

	public Account getData(Account param) {
		return accountDao.getData(param);
	}

	public void deposit(AccountParam param) {
		Date date = new Date();
		String amount = param.getAmount();
		long amt = 0;
		try {
			amt = MoneyUtil.toLong(amount);
		} catch (Exception e) {
			logger.error("账户充值失败,原因:金额格式有误", e);
			throw new ServiceException("账户充值失败,原因:金额格式有误");
		}
		if (amt <= 0) {
			throw new ServiceException("账户充值失败,原因:金额填写有误");
		}
		Account account = new Account();
		account.setUserId(param.getUserId());
		account = accountDao.getData(account);
		if (account == null) {
			throw new ServiceException("账户充值失败,原因:账户没开通");
		} else {
			long balance = account.getBalance();
			balance += amt;
			account.setBalance(balance);
			account.setUpdateTime(date);
			int count = accountDao.update(account);
			if (count < 1) {
				throw new ServiceException("账户充值失败,原因:更新余额出错");
			}
			
			AccountTrade accountDetail = new AccountTrade();
			accountDetail.setId(UIDGeneratorUtil.getUID());
			accountDetail.setUserId(param.getUserId());
			accountDetail.setStatus("1");
			accountDetail.setType("1");
			accountDetail.setAmount(amt);
			accountDetail.setCreateTime(date);
			accountDetailDao.save(accountDetail);
		}
	}

	public void withdraw(AccountParam param) {
		Date date = new Date();
		String amount = param.getAmount();
		long amt = 0;
		try {
			amt = MoneyUtil.toLong(amount);
		} catch (Exception e) {
			logger.error("账户取现失败,原因:金额填写有误", e);
			throw new ServiceException("账户取现失败,原因:金额填写有误");
		}
		if (amt <= 0) {
			throw new ServiceException("账户取现失败,原因:金额填写有误");
		}
		Account account = new Account();
		account.setUserId(param.getUserId());
		account = accountDao.getData(account);
		if (account == null) {
			throw new ServiceException("账户取现失败,原因:账户没开通");
		} else {
			long balance = account.getBalance();
			if (amt > balance) {
				throw new ServiceException("账户取现失败,原因:账户余额不足");
			}
			balance -= amt;
			account.setBalance(balance);
			account.setUpdateTime(date);
			int count = accountDao.update(account);
			if (count < 1) {
				throw new ServiceException("账户取现失败,原因:更新余额出错");
			}
			
			AccountTrade accountDetail = new AccountTrade();
			accountDetail.setId(UIDGeneratorUtil.getUID());
			accountDetail.setUserId(param.getUserId());
			accountDetail.setStatus("1");
			accountDetail.setType("0");
			accountDetail.setAmount(amt);
			accountDetail.setCreateTime(date);
			accountDetailDao.save(accountDetail);
		}
	}

}
