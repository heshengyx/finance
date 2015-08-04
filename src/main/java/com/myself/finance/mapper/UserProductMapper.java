package com.myself.finance.mapper;

import java.util.List;

import com.myself.finance.data.UserProductData;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserProductQueryParam;

public interface UserProductMapper {

	List<UserProductData> query(Page<UserProductQueryParam> param);
}
