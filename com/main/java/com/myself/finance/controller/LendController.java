package com.myself.finance.controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonResult;
import com.myself.finance.entity.Product;
import com.myself.finance.page.Page;
import com.myself.finance.param.ProductQueryParam;
import com.myself.finance.service.ProductService;

@Controller
@RequestMapping("/lend")
public class LendController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(LendController.class);
	
	@Autowired
	private ProductService productService;
	
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
		List<Product> datas = productService.list(pageResult);
		
		JsonResult<Product> jResult = new JsonResult<Product>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String detail(@PathVariable String id, Model model) {
		Product param = new Product();
		param.setId(id);
		param = productService.getData(param);
		model.addAttribute("product", param);
		return "lendDetail";
	}
}
