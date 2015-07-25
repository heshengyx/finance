package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.UserProductDao;
import com.myself.finance.data.UserProductData;
import com.myself.finance.mapper.UserProductMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserProductQueryParam;

@Repository
public class UserProductDaoImpl extends BaseDao<UserProductMapper> implements UserProductDao {

	public List<UserProductData> list(Page<UserProductQueryParam> param) {
		UserProductMapper mapper = getMapper(UserProductMapper.class);
		return mapper.query(param);
	}

}
