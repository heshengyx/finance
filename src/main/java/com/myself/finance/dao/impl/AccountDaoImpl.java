package com.myself.finance.dao.impl;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.AccountDao;
import com.myself.finance.dao.BaseDao;
import com.myself.finance.entity.Account;
import com.myself.finance.mapper.AccountMapper;

@Repository
public class AccountDaoImpl extends BaseDao<AccountMapper> implements AccountDao {

	public int save(Account param) {
		AccountMapper mapper = getMapper(AccountMapper.class);
		return mapper.save(param);
	}

	public int update(Account param) {
		AccountMapper mapper = getMapper(AccountMapper.class);
		return mapper.update(param);
	}

	public int delete(Account param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Account getData(Account param) {
		AccountMapper mapper = getMapper(AccountMapper.class);
		return mapper.getData(param);
	}
}
