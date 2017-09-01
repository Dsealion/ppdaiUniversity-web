package com.ppdai.university.service;

import com.ppdai.university.model.Video;
import org.springframework.stereotype.Service;

/**
 * video业务逻辑接口
 * Created by zhangshibo on 2017/8/31.
 */
@Service
public interface VideoService {

    /**
     * 根据id查询video信息
     * @param id
     * @return
     */
    Video queryVideoInfoById(int id);
}
