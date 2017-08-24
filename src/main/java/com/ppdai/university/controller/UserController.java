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
        model.put("message","dddddd");
        return "welcome";
    }

}
