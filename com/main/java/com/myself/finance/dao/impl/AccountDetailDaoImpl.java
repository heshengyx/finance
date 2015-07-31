package com.myself.finance.dao.impl;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.AccountDetailDao;
import com.myself.finance.dao.BaseDao;
import com.myself.finance.entity.AccountDetail;
import com.myself.finance.mapper.AccountDetailMapper;

@Repository
public class AccountDetailDaoImpl extends BaseDao<AccountDetailMapper> implements AccountDetailDao {

	public int save(AccountDetail param) {
		AccountDetailMapper mapper = getMapper(AccountDetailMapper.class);
		return mapper.save(param);
	}

	public int update(AccountDetail param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(AccountDetail param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public AccountDetail getData(AccountDetail param) {
		// TODO Auto-generated method stub
		return null;
	}

}
