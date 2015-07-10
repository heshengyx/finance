package com.myself.finance.dao.impl;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.User;
import com.myself.finance.mapper.UserMapper;

@Repository
public class UserDaoImpl extends BaseDao<UserMapper> implements UserDao {

	public int save(User user) {
		UserMapper mapper = getMapper(UserMapper.class);
		return mapper.save(user);
	}

	public User getUserByAccount(String account) {
		UserMapper mapper = getMapper(UserMapper.class);
		return mapper.getUserByAccount(account);
	}

}
