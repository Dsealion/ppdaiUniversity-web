package com.ppdai.university.controller;

import com.ppdai.university.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by zhangshibo on 2017/8/31.
 */
@Controller
public class ContentController {

    @Autowired
    VideoService videoService;

    /**
     * info
     * @param id
     * @return
     */
    @RequestMapping(value = "/content",method = RequestMethod.GET)
    public String info(Model model,@RequestParam("id")int id){
        model.addAttribute("videoInfo",videoService.queryVideoInfoById(id));
        return "content/content";
    }

}
