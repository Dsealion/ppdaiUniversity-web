package com.ppdai.university.controller;

import com.ppdai.university.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by zhangshibo on 2017/9/1.
 */
@Controller
public class IndexController {

    @Autowired
    private IndexService indexService;

    /**
     * 首页数据
     * @param model
     * @return
     */
    @RequestMapping("/")
    public String index(Model model){
        model.addAttribute("menuList",indexService.queryMenuInfo());
        model.addAttribute("videoList1",indexService.queryVideoList(4,1));
        model.addAttribute("videoList2",indexService.queryVideoList(4,2));
        return "index/index";
    }

    @RequestMapping(value = "/search",method = RequestMethod.GET)
    public String search(Model model, @RequestParam("type") int type ,@RequestParam("content") String content){
        if (type==1 && StringUtils.hasText(content)){
            model.addAttribute("videoInfo",indexService.queryVideoListByName(content));
            return "content/content";
        }
        else{
            model.addAttribute("videoList",indexService.queryVideoListByProviderName(content));
            return "category/category";
        }
    }
}
