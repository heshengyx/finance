package com.myself.finance.dao;

import com.myself.finance.entity.User;

public interface UserDao {

	int save(User user);
	User getUserByAccount(String account);
}
