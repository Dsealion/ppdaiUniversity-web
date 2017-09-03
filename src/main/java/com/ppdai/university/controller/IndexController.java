package com.ppdai.university.controller;

import com.ppdai.university.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
        return "index/index";
    }
}
