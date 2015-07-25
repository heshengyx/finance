package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.ProductDao;
import com.myself.finance.entity.Product;
import com.myself.finance.mapper.ProductMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;

@Repository
public class ProductDaoImpl extends BaseDao<ProductMapper> implements ProductDao {

	public int save(Product param) {
		ProductMapper mapper = getMapper(ProductMapper.class);
		return mapper.save(param);
	}

	public int update(Product param) {
		ProductMapper mapper = getMapper(ProductMapper.class);
		return mapper.update(param);
	}

	public int delete(Product param) {
		ProductMapper mapper = getMapper(ProductMapper.class);
		return mapper.delete(param);
	}

	public Product getData(Product param) {
		ProductMapper mapper = getMapper(ProductMapper.class);
		return mapper.getData(param);
	}

	public List<Product> list(Page<ProductQueryParam> param) {
		ProductMapper mapper = getMapper(ProductMapper.class);
		return mapper.query(param);
	}

}
