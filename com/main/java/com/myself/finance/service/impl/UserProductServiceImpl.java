package com.myself.finance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.finance.dao.UserProductDao;
import com.myself.finance.data.UserProductData;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserProductQueryParam;
import com.myself.finance.service.UserProductService;

@Service
public class UserProductServiceImpl implements UserProductService {

	@Autowired
	private UserProductDao userProductDao;
	
	public List<UserProductData> list(Page<UserProductQueryParam> param) {
		return userProductDao.list(param);
	}

}
