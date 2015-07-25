package com.myself.finance.dao;

import com.myself.finance.entity.User;

public interface UserDao {

	int save(User param);
	int update(User param);
	int delete(User param);
	User getData(User param);
}
