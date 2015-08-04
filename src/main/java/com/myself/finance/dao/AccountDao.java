package com.myself.finance.dao;

import com.myself.finance.entity.Account;

public interface AccountDao {

	int save(Account param);
	int update(Account param);
	int delete(Account param);
	Account getData(Account param);
}
