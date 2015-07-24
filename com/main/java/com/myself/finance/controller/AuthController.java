package com.myself.finance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.myself.common.message.JsonResult;
import com.myself.finance.data.UserProductData;
import com.myself.finance.entity.UserAuth;
import com.myself.finance.page.Page;
import com.myself.finance.param.UserAuthQueryParam;
import com.myself.finance.param.UserProductQueryParam;
import com.myself.finance.service.UserAuthService;
import com.myself.finance.service.UserProductService;

@Controller
@RequestMapping("/auth")
public class AuthController extends BaseController {

	@Autowired
	private UserAuthService userAuthService;
	
	@RequestMapping("/record/{userId}")
	@ResponseBody
	public Object record(@PathVariable String userId, UserAuthQueryParam param) {
		param.setUserId(userId);
		Page<UserAuthQueryParam> pageResult = new Page<UserAuthQueryParam>();
		pageResult.setPage(param.getPage());
		pageResult.setRows(param.getLength());
		pageResult.setEntity(param);
		List<UserAuth> datas = userAuthService.list(pageResult);
		
		JsonResult<UserAuth> jResult = new JsonResult<UserAuth>();
		jResult.setDraw(param.getDraw());
		jResult.setRecordsTotal(pageResult.getTotalRecord());
		jResult.setRecordsFiltered(pageResult.getTotalRecord());
		jResult.setData(datas);
		return jResult;
	}
}
