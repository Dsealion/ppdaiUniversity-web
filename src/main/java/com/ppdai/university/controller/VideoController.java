package com.ppdai.university.controller;

import com.ppdai.university.model.Video;
import com.ppdai.university.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by zhangshibo on 2017/8/31.
 */
@RestController
public class VideoController {

    @Autowired
    VideoService videoService;

    /**
     * info
     * @param id
     * @return
     */
    @RequestMapping(value = "/video",method = RequestMethod.GET)
    public Video info(@RequestParam("id") int id){
        return videoService.queryVideoInfoById(id);
    }

}
