package com.myself.finance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.finance.dao.UserAuthDao;
import com.myself.finance.entity.UserAuth;
import com.myself.finance.param.UserAuthQueryParam;
import com.myself.finance.service.UserAuthService;

@Service
public class UserAuthServiceImpl implements UserAuthService {

	@Autowired
	private UserAuthDao userAuthDao;
	
	public List<UserAuth> list(UserAuthQueryParam param) {
		return userAuthDao.list(param);
	}

}
