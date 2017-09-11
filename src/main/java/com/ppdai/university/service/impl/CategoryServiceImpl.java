package com.ppdai.university.service.impl;

import com.ppdai.university.dao.CategoryDao;
import com.ppdai.university.model.Category;
import com.ppdai.university.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/10.
 */
@Service
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    private CategoryDao categoryDao;

    /**
     * queryCategoryInfo
     * @return
     */
    @Override
    public List<Category> queryCategoryInfo() {
        return categoryDao.queryCategoryInfo();
    }

    /**
     * queryCategoryInfoById
     * @param id
     * @return
     */
    @Override
    public Category queryCategoryInfoById(int id) {
        return categoryDao.queryCategoryInfoById(id);
    }
}
