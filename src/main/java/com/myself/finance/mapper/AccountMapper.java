package com.myself.finance.mapper;

import com.myself.finance.entity.Account;
import com.myself.finance.entity.AccountTrade;

public interface AccountMapper {

	int save(Account param);
	int update(Account param);
	int delete(Account param);
	Account getData(Account param);
	
	int save(Account account, AccountTrade accountDetail);
}
