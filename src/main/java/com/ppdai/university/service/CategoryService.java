package com.ppdai.university.service;

import com.ppdai.university.model.Category;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/8.
 */
public interface CategoryService {

    /**
     * queryCategoryInfo
     * @return
     */
    public List<Category> queryCategoryInfo();

    /**
     * queryCategoryInfoById
     * @param id
     * @return
     */
    public Category queryCategoryInfoById(int id);
}
