package com.myself.finance.sevice.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.User;
import com.myself.finance.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public int save(User user) {
		return userDao.save(user);
	}

	public User getUserByAccount(String account) {
		return userDao.getUserByAccount(account);
	}

}
