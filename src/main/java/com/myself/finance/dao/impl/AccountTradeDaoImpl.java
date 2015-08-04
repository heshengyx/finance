package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.AccountTradeDao;
import com.myself.finance.dao.BaseDao;
import com.myself.finance.entity.AccountTrade;
import com.myself.finance.mapper.AccountTradeMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.AccountTradeQueryParam;

@Repository
public class AccountTradeDaoImpl extends BaseDao<AccountTradeMapper> implements AccountTradeDao {

	public int save(AccountTrade param) {
		AccountTradeMapper mapper = getMapper(AccountTradeMapper.class);
		return mapper.save(param);
	}

	public int update(AccountTrade param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(AccountTrade param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public AccountTrade getData(AccountTrade param) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<AccountTrade> list(Page<AccountTradeQueryParam> param) {
		AccountTradeMapper mapper = getMapper(AccountTradeMapper.class);
		return mapper.query(param);
	}

}
