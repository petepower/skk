package com.pete.web.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pete.web.controller.base.BaseController;

@Controller
@RequestMapping("/index")
public class IndexController extends BaseController{
			
	@RequestMapping("")
	public String  index() {
		return "index";
	}
	
}
