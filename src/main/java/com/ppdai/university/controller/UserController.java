package com.ppdai.university.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.Map;

/**
 * Created by zhangshibo on 2017/8/23.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/info")
    public String info(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message", "hello world <img src=\"image/demo.jpg\">");
        return "welcome";
    }

    @RequestMapping("/login")
    public String login(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message","dddddd");
        return "login";
    }
    
    @RequestMapping("/register")
    public String register(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message","dddddd");
        return "loginAndRegister/register";
    }

    @RequestMapping("/index")
    public String index(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message","dddddd");
        return "index/index";
    }

    @RequestMapping("/content")
    public String content(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message","dddddd");
        return "content/content";
    }

    @RequestMapping("/category")
    public String category(Map<String, Object> model){
        model.put("time",new Date());
        model.put("message","dddddd");
        return "category/category";
    }
}
