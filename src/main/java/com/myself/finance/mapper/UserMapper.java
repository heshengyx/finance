package com.myself.finance.mapper;

import com.myself.finance.entity.User;

public interface UserMapper {

	int save(User param);
	int update(User param);
	int delete(User param);
	User getData(User param);
}
