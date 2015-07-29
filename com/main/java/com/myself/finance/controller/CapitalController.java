package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home/capital")
public class CapitalController extends BaseController {

	@RequestMapping("/trade")
	public String trade() {
		return "trade";
	}
	
	@RequestMapping("/deposit")
	public String deposit() {
		return "deposit";
	}
	
	@RequestMapping("/withdraw")
	public String withdraw() {
		return "withdraw";
	}
}
