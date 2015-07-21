package com.myself.finance.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonResult;
import com.myself.finance.entity.Product;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;

@Controller
@RequestMapping("/lend")
public class LendController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(LendController.class);

	@RequestMapping("")
	public String page() {
		return "lend";
	}
	
	@RequestMapping("/list")
	@ResponseBody
	public Object list(ProductQueryParam param) {
		Page<ProductQueryParam> pageResult = new Page<ProductQueryParam>();
		pageResult.setPage(param.getPage());
		pageResult.setRows(param.getLength());

		pageResult.setEntity(param);
		
		List<Product> datas = new ArrayList<Product>();
		Product product = new Product();
		product.setName("Jack");
		datas.add(product);
		product = new Product();
		product.setName("Pack");
		datas.add(product);
		
		JsonResult<Product> jResult = new JsonResult<Product>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
}
