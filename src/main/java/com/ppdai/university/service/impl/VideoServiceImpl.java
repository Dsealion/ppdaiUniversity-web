package com.ppdai.university.service.impl;

import com.ppdai.university.dao.VideoDao;
import com.ppdai.university.model.Video;
import com.ppdai.university.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by zhangshibo on 2017/8/31.
 */
@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoDao videoDao;

    @Override
    public Video queryVideoInfoById(int id) {
        return videoDao.queryVideoInfoById(id);
    }
}
