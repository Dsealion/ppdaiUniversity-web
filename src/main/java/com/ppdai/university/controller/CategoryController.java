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
        model.addAttribute("categoryName","全部课程");
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
    public String page(Model model,@RequestParam(value = "categoryId",required = false) Integer categoryId){
        model.addAttribute("categoryName",categoryId != null ? categoryService.queryCategoryInfoById(categoryId).getName():"全部课程");
        model.addAttribute("videoList",categoryId != null ?videoService.queryVideoListByCategoryId(categoryId):videoService.queryAllVideoList());
        return "/category/category";
    }

    /**
     * order
     * @param model
     * @param categoryId
     * @param sortId
     * @return
     */
    @RequestMapping(value = "/category/order")
    public String order(Model model,@RequestParam(value = "categoryId",required = false) Integer categoryId,@RequestParam("sortId") int sortId){
        model.addAttribute("categoryName",categoryId != null ? categoryService.queryCategoryInfoById(categoryId).getName():"全部课程");
        model.addAttribute("videoList",categoryId != null ?videoService.queryVideoListOrderByCategoryId(categoryId,sortId):videoService.queryAllVideoListOrder(sortId));
        return "/category/category";
    }

    @RequestMapping(value = "/category/search")
    public String search(Model model,@RequestParam(value = "categoryId",required = false) Integer categoryId,@RequestParam("sortId") int sortId){
        model.addAttribute("categoryName",categoryId != null ? categoryService.queryCategoryInfoById(categoryId).getName():"全部课程");
        model.addAttribute("videoList",categoryId != null ?videoService.queryVideoListOrderByCategoryId(categoryId,sortId):videoService.queryAllVideoListOrder(sortId));
        return "/category/category";
    }



}
