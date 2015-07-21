package com.myself.finance.controller;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonResult;
import com.myself.finance.entity.Lend;
import com.myself.finance.page.Page;
import com.myself.finance.param.LendQueryParam;

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
	public Object list(LendQueryParam param) {
		Page<LendQueryParam> pageResult = new Page<LendQueryParam>();
		pageResult.setPage(param.getPage());
		pageResult.setRows(param.getLength());

		pageResult.setEntity(param);
		
		List<Lend> datas = new ArrayList<Lend>();
		Lend lend = new Lend();
		lend.setName("Jack");
		datas.add(lend);
		lend = new Lend();
		lend.setName("Pack");
		datas.add(lend);
		
		JsonResult<Lend> jResult = new JsonResult<Lend>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
}
