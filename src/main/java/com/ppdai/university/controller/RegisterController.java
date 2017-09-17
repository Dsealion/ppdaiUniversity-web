package com.ppdai.university.controller;

import java.io.IOException;
import java.util.Date;
import java.util.UUID;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ppdai.university.domain.UserDO;
import com.ppdai.university.service.UserService;


/**
 * 
 * @author daichaojie
 *
 */
@Controller
@RequestMapping("/register")
public class RegisterController {

	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/userRegister")
	public String register(Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		String name = request.getParameter("username");
		String pwd = request.getParameter("password");
		String email = request.getParameter("email");
		
		if(name==null||name.trim().length()<=0){
			logger.info("用户名不能为空，请重新输入!");
			return "/login";
		}
		if(pwd==null||pwd.trim().length()<=0){
			logger.info("密码不能为空，请重新输入!");
			return "/login";
		}
		if(email==null||email.trim().length()<=0){
			logger.info("邮箱不能为空，请重新输入!");
			return "/login";
		}
		if(email.indexOf("@")==-1){
			logger.info("邮箱格式不对，请重新输入!");
			return "/login";
		}
		
		UserDO userDO = new UserDO();
		userDO.setUserName(name);
		userDO.setPassword(pwd);
		userDO.setEmail(email);
		userDO.setIsactive(true);
		userDO.setStatus(0);
		userDO.setInserttime(new Date());
		userDO.setUpdatetime(new Date());
		String token = UUID.randomUUID().toString().replaceAll("-", "");
		userDO.setToken(token);
		
		Integer sucess = userService.insert(userDO);
		if (sucess != 0){
			//发送激活邮件
			//这里有一个小知识点，必须新开一个线程来发邮件，不能把发邮件的动作写在这里
			//如果写在这里，用户的前台显示会等待过长时间，不好！
			new com.ppdai.university.Utils.MySendMailThread(userDO).start();
			model.addAttribute("result"," 注册成功");
			return "loginAndRegister/active";
		}else{
			model.addAttribute("result", "很抱歉，服务器繁忙，注册失败，需要重新注册！");
			return "loginAndRegister/fail";
		}
	}
	
}
