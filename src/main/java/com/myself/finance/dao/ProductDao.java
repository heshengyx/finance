package com.myself.finance.dao;

import java.util.List;

import com.myself.finance.entity.Product;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;

public interface ProductDao {

	int save(Product param);
	int update(Product param);
	int delete(Product param);
	Product getData(Product param);
	List<Product> list(Page<ProductQueryParam> param);
}
