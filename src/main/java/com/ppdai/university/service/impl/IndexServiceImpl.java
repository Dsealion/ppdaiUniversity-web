package com.ppdai.university.service.impl;

import com.ppdai.university.dao.MenuDao;
import com.ppdai.university.model.Menu;
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

    /**
     * queryMenuInfo
     * @return
     */
    @Override
    public List<Menu> queryMenuInfo() {
        return menuDao.queryMenuInfo();
    }
}
