package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.UserAuthDao;
import com.myself.finance.entity.UserAuth;
import com.myself.finance.mapper.UserAuthMapper;
import com.myself.finance.param.UserAuthQueryParam;

@Repository
public class UserAuthDaoImpl extends BaseDao<UserAuthMapper> implements UserAuthDao {

	public List<UserAuth> list(UserAuthQueryParam param) {
		UserAuthMapper mapper = getMapper(UserAuthMapper.class);
		return mapper.list(param);
	}

}
