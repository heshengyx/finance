package com.myself.finance.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.finance.dao.ProductDao;
import com.myself.finance.entity.Product;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;
import com.myself.finance.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;
	
	public int save(Product param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int update(Product param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(Product param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Product getData(Product param) {
		return productDao.getData(param);
	}

	public List<Product> list(Page<ProductQueryParam> param) {
		return productDao.list(param);
	}

}
