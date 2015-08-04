package com.myself.finance.dao;

import com.myself.finance.entity.AccountDetail;

public interface AccountDetailDao {

	int save(AccountDetail param);
	int update(AccountDetail param);
	int delete(AccountDetail param);
	AccountDetail getData(AccountDetail param);
}
