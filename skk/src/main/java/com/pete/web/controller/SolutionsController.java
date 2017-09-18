package com.pete.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pete.web.controller.base.BaseController;

@Controller
@RequestMapping("/solutions")
public class SolutionsController extends BaseController {

	@RequestMapping("")
	public String index() {
		return "solutions/index";
	}
}
