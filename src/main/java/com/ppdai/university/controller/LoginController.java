package com.ppdai.university.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppdai.university.domain.UserDO;
import com.ppdai.university.service.UserService;

/**
 * 登录控制器
 * 
 * 
 * @author daichaojie
 *
 */
@Controller
@RequestMapping("/login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private UserService userService;
	/**
	 * 用户登录
	 * 
	 * @param model
	 * @param request
	 * @param response
	 * @return
	 * @throws IOException
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping("/userLogin")
	public String login(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {

		String userName = request.getParameter("loginName");
		String passWord = request.getParameter("password");
		try {
			UserDO userDO = new UserDO();
			userDO.setUserName(userName);
			userDO.setPassword(passWord);
			userDO.setIsactive(true);
			userDO.setStatus(1);
			List<UserDO>  userDOs = userService.selectDynamic(userDO);
			
			if(userDOs.size() != 0){
				model.addAttribute("isLogin","success");
				model.addAttribute("resutl","欢迎你"+userDOs.get(0).getUserName());
				
				return "/";
			}
			
			
		} catch (Exception ae) {
			logger.info("Shiro Exception --> AuthenticationException ");
			logger.info("Unexpected condition error");
			return "/../../login";
		}
		return null;
	}

	/**
	 * 登陆用户退出
	 * 
	 * @return
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		try {
			/*doLog(LogEvent.LOGOUT);
			SecurityUtils.getSubject().logout();*/
		} catch (Exception e) {
			logger.error("errorMessage:" + e.getMessage());
		}
		return "/../../login";
	}

	@RequestMapping(value = "/tologin")
	public String toLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {

		logger.info("用户未登陆踢出");

		return "/../../tologin";
	}

}
