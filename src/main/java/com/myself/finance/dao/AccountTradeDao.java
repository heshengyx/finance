package com.myself.finance.dao;

import java.util.List;

import com.myself.finance.entity.AccountTrade;
import com.myself.finance.page.Page;
import com.myself.finance.param.AccountTradeQueryParam;

public interface AccountTradeDao {

	int save(AccountTrade param);
	int update(AccountTrade param);
	int delete(AccountTrade param);
	AccountTrade getData(AccountTrade param);
	
	List<AccountTrade> list(Page<AccountTradeQueryParam> param);
}
