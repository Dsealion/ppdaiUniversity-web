package com.ppdai.university.service.impl;

import com.ppdai.university.commons.MapUtil;
import com.ppdai.university.dao.MenuDao;
import com.ppdai.university.dao.VideoDao;
import com.ppdai.university.model.Menu;
import com.ppdai.university.model.Video;
import com.ppdai.university.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/3.
 */
@Service
public class IndexServiceImpl implements IndexService {

    @Autowired
    private MenuDao menuDao;
    @Autowired
    private VideoDao videoDao;

    /**
     * queryMenuInfo
     * @return
     */
    @Override
    public List<Menu> queryMenuInfo() {
        return menuDao.queryMenuInfo();
    }

    /**
     * queryVideoList
     * @param topNum
     * @param categoryId
     * @return
     */
    @Override
    public List<Video> queryVideoList(int topNum, int categoryId) {
        return videoDao.queryVideoList(MapUtil.buildMap("topNum",topNum,"categoryId",categoryId));
    }

    /**
     * queryVideoAllList
     * @return
     */
    @Override
    public List<Video> queryVideoAllList() {
        return videoDao.queryVideoAllList();
    }

    /**
     * queryVideoListByName
     * @param name
     * @return
     */
    @Override
    public Video queryVideoListByName(String name) {
        return videoDao.queryVideoInfoByName(name);
    }

    /**
     * queryVideoListByProviderName
     * @param providerName
     * @return
     */
    @Override
    public List<Video> queryVideoListByProviderName(String providerName) {
        return null;
    }
}
