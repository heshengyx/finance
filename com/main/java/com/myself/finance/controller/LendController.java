package com.myself.finance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lend")
public class LendController extends BaseController {

	private final static Logger logger = LoggerFactory
			.getLogger(LendController.class);

	@RequestMapping("")
	public String page() {
		return "lend";
	}
}
