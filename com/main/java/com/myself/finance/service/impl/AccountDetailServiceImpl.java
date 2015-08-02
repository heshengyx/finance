package com.myself.finance.service.impl;

import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.AccountDetailDao;
import com.myself.finance.entity.AccountDetail;
import com.myself.finance.service.AccountDetailService;

@Service
public class AccountDetailServiceImpl implements AccountDetailService {

	private final static Logger logger = LoggerFactory
			.getLogger(AccountDetailServiceImpl.class);
	
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
		return null;
	}
}
