package com.myself.finance.service.impl;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myself.common.exception.ServiceException;
import com.myself.common.utils.MoneyUtil;
import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.AccountDao;
import com.myself.finance.dao.AccountDetailDao;
import com.myself.finance.entity.Account;
import com.myself.finance.entity.AccountDetail;
import com.myself.finance.param.AccountDetailParam;
import com.myself.finance.service.AccountDetailService;

@Service
public class AccountDetailServiceImpl implements AccountDetailService {

	private final static Logger logger = LoggerFactory
			.getLogger(AccountDetailServiceImpl.class);
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private AccountDetailDao accountDetailDao;
	
	public void save(AccountDetail param) {
		param.setId(UIDGeneratorUtil.getUID());
		param.setStatus("1");
		param.setCreateTime(new Date());
		accountDetailDao.save(param);
	}

	public void update(AccountDetail param) {
		
	}

	public void delete(AccountDetail param) {
		
	}

	public AccountDetail getData(AccountDetail param) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public void save(AccountDetailParam param) {
		Date date = new Date();
		String amount = param.getAmount();
		long amt = 0;
		try {
			amt = MoneyUtil.toLong(amount);
		} catch (Exception e) {
			logger.error("账户充值失败,原因:金额填写有误", e);
			throw new ServiceException("账户充值失败,原因:金额填写有误");
		}
		if (amt <= 0) {
			throw new ServiceException("账户充值失败,原因:金额填写有误");
		}
		String accountId = param.getAccountId();
		Account account = new Account();
		account.setId(accountId);
		account.setUserId(param.getUserId());
		account = accountDao.getData(account);
		if (account == null) {
			throw new ServiceException("账户充值失败,原因:账户没开通");
		} else {
			long balance = account.getBalance();
			balance += (amt);
			account.setBalance(balance);
			account.setUpdateTime(date);
			int count = accountDao.update(account);
			if (count < 1) {
				throw new ServiceException("账户充值失败,原因:更新余额出错");
			}
			
			AccountDetail accountDetail = new AccountDetail();
			accountDetail.setId(UIDGeneratorUtil.getUID());
			accountDetail.setAccountId(accountId);
			accountDetail.setStatus("1");
			accountDetail.setAmount(amt);
			accountDetail.setCreateTime(date);
			accountDetailDao.save(accountDetail);
		}
	}

}
