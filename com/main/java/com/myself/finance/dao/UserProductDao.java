package com.myself.finance.dao;

import java.util.List;

import com.myself.finance.data.UserProductData;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserProductQueryParam;

public interface UserProductDao {

	List<UserProductData> list(Page<UserProductQueryParam> param);
}
