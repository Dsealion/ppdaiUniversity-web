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

    @Override
    public List<Video> queryVideoList(int topNum, int categoryId) {
        return videoDao.queryVideoList(MapUtil.buildMap("topNum",topNum,"categoryId",categoryId));
    }
}
