package com.ppdai.university.dao;

import com.ppdai.university.model.Video;
import org.apache.ibatis.annotations.Param;

/**
 * video数据处理接口类
 * Created by zhangshibo on 2017/8/31.
 */
public interface VideoDao {

    /**
     * 根据id查询video信息
     * @param id
     * @return
     */
    Video queryVideoInfoById(@Param("id") int id);
}
