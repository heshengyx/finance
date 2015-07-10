package com.myself.finance.mapper;

import com.myself.finance.entity.User;

public interface UserMapper {

	int save(User user);
	User getUserByAccount(String account);
}
