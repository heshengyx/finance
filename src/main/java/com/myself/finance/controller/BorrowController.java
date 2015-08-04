package com.myself.finance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/borrow")
public class BorrowController extends BaseController {

	@RequestMapping("")
	public String page() {
		return "borrow";
	}
}
