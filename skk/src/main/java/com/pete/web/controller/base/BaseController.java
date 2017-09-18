package com.pete.web.controller.base;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;


public class BaseController {
	
	@Autowired
	protected HttpServletRequest request;
	
	@Autowired
	protected HttpServletResponse response;
	
	public String page(String page) {
		request.getSession().setAttribute("redirect", request.getRequestURI());
		request.setAttribute("page", page);
		return "page";
	}

}
