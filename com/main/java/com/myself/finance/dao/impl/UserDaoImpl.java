package com.myself.finance.dao.impl;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.User;
import com.myself.finance.mapper.UserMapper;

@Repository
public class UserDaoImpl extends BaseDao<UserMapper> implements UserDao {

	public int save(User param) {
		UserMapper mapper = getMapper(UserMapper.class);
		return mapper.save(param);
	}

	public int update(User param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(User param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public User getData(User param) {
		UserMapper mapper = getMapper(UserMapper.class);
		return mapper.getData(param);
	}

}
