package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "home";
	}
	
	@RequestMapping("/capital")
	public String capital() {
		return "capital";
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
