package com.ppdai.university.dao;

import com.ppdai.university.model.Category;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/10.
 */
public interface CategoryDao {

    /**
     * 获取类别信息
     * @return
     */
    List<Category> queryCategoryInfo();

    /**
     * queryCategoryInfoById
     * @return
     */
    Category queryCategoryInfoById(@Param("id") int id);
}
