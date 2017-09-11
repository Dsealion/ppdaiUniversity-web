package com.ppdai.university.service.impl;

import com.ppdai.university.dao.VideoDao;
import com.ppdai.university.model.Video;
import com.ppdai.university.service.VideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhangshibo on 2017/8/31.
 */
@Service
public class VideoServiceImpl implements VideoService {

    @Autowired
    private VideoDao videoDao;

    /**
     * queryVideoInfoById
     * @param id
     * @return
     */
    @Override
    public Video queryVideoInfoById(int id) {
        return videoDao.queryVideoInfoById(id);
    }

    /**
     * queryAllVideoList
     * @return
     */
    @Override
    public List<Video> queryAllVideoList() {
        return videoDao.queryAllVideoList();
    }

    /**
     * queryVideoListByCategoryId
     * @param categoryId
     * @return
     */
    @Override
    public List<Video> queryVideoListByCategoryId(int categoryId) {
        return videoDao.queryVideoListByCategoryId(categoryId);
    }
}
