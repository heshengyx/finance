package com.myself.finance.service.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.AccountDao;
import com.myself.finance.entity.Account;
import com.myself.finance.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountDao accountDao;
	
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
		// TODO Auto-generated method stub
		return null;
	}

}
