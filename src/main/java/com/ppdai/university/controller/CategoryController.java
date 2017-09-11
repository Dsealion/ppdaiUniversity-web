package com.ppdai.university.controller;

import com.ppdai.university.service.CategoryService;
import com.ppdai.university.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by zhangshibo on 2017/9/8.
 */
@Controller
public class CategoryController {

    @Autowired
    private VideoService videoService;
    @Autowired
    private CategoryService categoryService;

    /**
     * info
     * @param model
     * @return
     */
    @RequestMapping("/category")
    public String info(Model model){
        model.addAttribute("isCategory",false);
        model.addAttribute("videoList",videoService.queryAllVideoList());
        return "/category/category";
    }

    /**
     * page
     * @param model
     * @param categoryId
     * @return
     */
    @RequestMapping("/category/page")
    public String page(Model model,@RequestParam("categoryId") int categoryId){
        model.addAttribute("isCategory",true);
        model.addAttribute("categoryName",categoryService.queryCategoryInfoById(categoryId).getName());
        model.addAttribute("videoList",videoService.queryVideoListByCategoryId(categoryId));
        return "/category/category";
    }

    @RequestMapping("category/order")
    public String order(Model model,@RequestParam("categoryId") int categoryId){
        model.addAttribute("isCategory",true);
        model.addAttribute("categoryName",categoryService.queryCategoryInfoById(categoryId).getName());
        model.addAttribute("videoList",videoService.queryVideoListByCategoryId(categoryId));
        return "/category/category";
    }

}
