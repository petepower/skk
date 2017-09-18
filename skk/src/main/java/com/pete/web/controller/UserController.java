package com.pete.web.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.pete.constants.SystemConstants;
import com.pete.domain.entity.AcctUser;
import com.pete.domain.service.UserService;
import com.pete.logger.SystemLogger;
import com.pete.util.Md5Utils;
import com.pete.web.controller.base.BaseController;

@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
			
	private static final Logger LOGGER = Logger.getLogger(UserController.class);
	
	@Autowired
	private UserService userService;
	
	
	/**
	 * 跳转至 注册用户页面
	 * @return
	 * @time 2017年9月9日 下午8:08:25
	 * @author peter
	 */
	@RequestMapping("/registpage")
	public String regist() {
		return "/user/regist";
	}
	
	/**
	 * 跳转至 用户登录页面
	 * @return
	 * @time 2017年9月9日 下午8:08:25
	 * @author peter
	 */
	@RequestMapping("/login")
	public String login() {
		return "/user/login";
	}
	
	/**
	 * 用户登录控制
	 * @return
	 * @time 2017年9月9日 下午8:08:25
	 * @author peter
	 */
	@ResponseBody
	@RequestMapping("/userLogin")
	public JSONObject userLogin() {
		String account = request.getParameter("input_user_account");
		String passwd = request.getParameter("input_user_passwd");
		AcctUser acctUser = userService.findByAccount(account);
		JSONObject json = new JSONObject();
		try {
			if (acctUser != null) {
				if (Md5Utils.string2MD5(passwd).equals(acctUser.getPasswdMd5())) {
					// 验证成功
					json.put("status", SystemConstants.USERLOGINVALIDATE_STATUS_SUCCESS);
					json.put("result", SystemConstants.USERLOGINVALIDATE_SUCCESS);
					request.setAttribute("acctUser", acctUser);
					request.getSession().setAttribute("currentUser", acctUser);
				} else {
					// 用户名或密码错误
					json.put("status", SystemConstants.USERLOGINVALIDATE_STATUS_FAIL);
					json.put("result", SystemConstants.USERLOGINVALIDATE_FAIL);
				}
			} else {
				// 用户名或密码错误
				json.put("status", SystemConstants.USERLOGINVALIDATE_STATUS_FAIL);
				json.put("result", SystemConstants.USERLOGINVALIDATE_FAIL);
			}
		} catch (Exception e) {
			LOGGER.error("用户登录验证异常{userAccount:"+account+";userpasswd:"+passwd+",exception:"+e.getMessage()+"}");
		}
		return json;
		
	}
	
	/**
	 * 提交表单，注册为系统用户后，跳转至欢迎用户页面 。
	 * 页面附加 用户中心 按钮。默认 5秒后刷新 进入首页。
	 * @param user
	 * @return
	 * @time 2017年9月9日 下午8:12:43
	 * @author peter
	 */
	@RequestMapping(value = "/registUser",method=RequestMethod.POST)
	public String registUser() {
		AcctUser acctUser = new AcctUser();
		acctUser.setAccount(request.getParameter("input_user_account"));
		acctUser.setPasswd(request.getParameter("input_user_passwd"));
		acctUser.setPasswdMd5(Md5Utils.string2MD5(request.getParameter("input_user_passwd")));
		acctUser.setTelephone(request.getParameter("input_user_phone"));
		acctUser.setEmail(request.getParameter("input_user_email"));
		acctUser.setCreateTime(new Date());
		acctUser.setIsAvailable(1);
		userService.save(acctUser);
		LOGGER.info("user.getAccount = " + acctUser.getAccount() + " >> id :" + acctUser.getId());
		LOGGER.info("User Regist Successful!!");
		request.setAttribute("acctUser", acctUser);
		request.getSession().setAttribute("currentUser", acctUser);
		return "/user/userWelcome";
	}
	
	/**
	 * 用户退出登录
	 * 退出后停留在用户登录页面
	 * @param user
	 * @return
	 * @time 2017年9月9日 下午8:12:43
	 * @author peter
	 */
	@RequestMapping(value = "/quitLogin",method=RequestMethod.GET)
	public String quitLogin() {
		LOGGER.info("User Regist Successful!!");
		request.removeAttribute("acctUser");
		request.getSession().removeAttribute("currentUser");
		return "/user/login";
	}
	
	
	/**
	 * 跳转至用户中心
	 * <pre> 在这里应该展示用户中心数据
	 * 理论上 ，左侧应是树形菜单组，右侧对应菜单内容
	 * 应在个人中心页面 管理 1.用户资料信息 2.资源信息（上传）3.浏览信息 4. 财务信息等
	 * @return
	 * @time 2017年9月11日 下午10:24:41
	 * @author peter
	 */
	@RequestMapping(value = "/memberCenter",method=RequestMethod.GET)
	public String memberCenter() {
		
		return "/user/memberCenter";
	}

	@RequestMapping("/showInfo/{userId}")
	public String showUserInfo(ModelMap modelMap, @PathVariable Integer userId) {
		LOGGER.info("查询用户：" + userId);
		AcctUser userInfo = userService.load(userId);
		modelMap.addAttribute("userInfo", userInfo);
		return "/user/showInfo";
	}

	@RequestMapping("/showInfos")
	public @ResponseBody List<AcctUser> showUserInfos() {
		LOGGER.info("查询用户全部用户");
		List<AcctUser> userInfos = userService.findAll();
		return userInfos;
	}
}
