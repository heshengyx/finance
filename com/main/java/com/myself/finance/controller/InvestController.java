package com.myself.finance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonResult;
import com.myself.finance.data.UserProductData;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserProductQueryParam;
import com.myself.finance.service.UserProductService;

@Controller
@RequestMapping("/invest")
public class InvestController extends BaseController {

	@Autowired
	private UserProductService userProductService;
	
	@RequestMapping("/record/{productId}")
	@ResponseBody
	public Object record(@PathVariable String productId, UserProductQueryParam param) {
		param.setProductId(productId);
		Page<UserProductQueryParam> pageResult = new Page<UserProductQueryParam>();
		pageResult.setPage(param.getPage());
		pageResult.setRows(param.getLength());
		pageResult.setEntity(param);
		List<UserProductData> datas = userProductService.list(pageResult);
		
		JsonResult<UserProductData> jResult = new JsonResult<UserProductData>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
}
