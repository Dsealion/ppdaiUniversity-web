package com.ppdai.university.dao;

import com.ppdai.university.model.Menu;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/3.
 */
public interface MenuDao {

    /**
     * 获取菜单信息
     * @return
     */
    List<Menu> queryMenuInfo();
}
