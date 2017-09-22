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
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ppdai.university.domain.UserDO;
import com.ppdai.university.exception.BussinessException;
import com.ppdai.university.service.CategoryService;
import com.ppdai.university.service.IndexService;
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
	
	@Autowired
    private IndexService indexService;
	@Autowired
    private CategoryService categoryService;
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
				model.addAttribute("categoryList",categoryService.queryCategoryInfo());
		        model.addAttribute("videoList1",indexService.queryVideoList(4,1));
		        model.addAttribute("videoList2",indexService.queryVideoList(4,2));
		        model.addAttribute("isLogin","true");
				model.addAttribute("resutl","欢迎您  "+userDOs.get(0).getUserName());
				return "index/index";
			}
		} catch (Exception ae) {
			logger.info("Shiro Exception --> AuthenticationException ");
			logger.info("Unexpected condition error");
			return "/../../login";
		}
		return null;
	}

	@SuppressWarnings("rawtypes")
	@RequestMapping("/check")
	public void check(Model model, HttpServletRequest request, String code) throws IOException {

		String codeRequest = request.getParameter("code");
		try {
			if (StringUtils.isEmpty(codeRequest)) {  
				logger.error("没有生成验证码信息");  
	            throw new IllegalStateException("ERR-01000");  
	        } 
			
			if (StringUtils.isEmpty(code)) {  
				logger.error("未填写验证码信息");
				throw new BussinessException("ERR-06019");  
	        }  
			
			 if (codeRequest.equalsIgnoreCase(code)) {  
		            // 验证码通过  
		        } else {  
		        	logger.error("验证码错误");  
		            throw new BussinessException("ERR-06019");  
		        }  
		} catch (Exception ae) {
			logger.info("Shiro Exception --> AuthenticationException ");
			logger.info("Unexpected condition error");
		}
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
