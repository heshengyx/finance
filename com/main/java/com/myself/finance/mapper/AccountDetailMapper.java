package com.myself.finance.mapper;

import com.myself.finance.entity.AccountDetail;

public interface AccountDetailMapper {

	int save(AccountDetail param);
	int update(AccountDetail param);
	int delete(AccountDetail param);
	AccountDetail getData(AccountDetail param);
}
