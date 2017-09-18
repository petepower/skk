package com.pete.web.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pete.domain.entity.AcctUser;
import com.pete.web.controller.base.BaseController;

@Controller
@RequestMapping("/home")
public class HomeController extends BaseController {
	
	private static final Logger LOGGER = Logger.getLogger(HomeController.class);

	/**
	 * 首页
	 * @return
	 * @time 2017年9月11日 下午10:26:58
	 * @author peter
	 */
	@RequestMapping("/bs")
	public String  bs() {
		AcctUser user = (AcctUser) request.getSession().getAttribute("currentUser");
		if (user != null) {
			LOGGER.info(user.getAccount() + " >> 访问首页");
		}
		return "home/bs";
	}
	
	
	/**
	 * 数控文库
	 * @return
	 * @time 2017年9月11日 下午10:27:39
	 * @author peter
	 */
	@RequestMapping("/bs2")
	public String  bs2() {
		LOGGER.info("查询首页");
		request.setAttribute("code", "00000");
		return "home/bs2";
	}
}
