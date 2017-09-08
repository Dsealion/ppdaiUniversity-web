package com.ppdai.university.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by zhangshibo on 2017/9/8.
 */
@Controller
public class CategoryController {

    public String page(Model model,@RequestParam("id") int id){

        return "/category/category";
    }
}
