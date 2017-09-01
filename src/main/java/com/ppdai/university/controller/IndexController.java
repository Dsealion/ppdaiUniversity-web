package com.ppdai.university.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by zhangshibo on 2017/9/1.
 */
@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(Model model){

        return "index";
    }
}
