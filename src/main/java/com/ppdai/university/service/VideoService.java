package com.ppdai.university.service;

import com.ppdai.university.model.Video;
import org.springframework.stereotype.Service;

import java.util.List;

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

    /**
     * queryAllVideoList
     * @return
     */
    List<Video> queryAllVideoList();

    /**
     * queryVideoListByCategoryId
     * @param categoryId
     * @return
     */
    List<Video> queryVideoListByCategoryId(int categoryId);

    /**
     * queryVideoListOrderByCategoryId
     * @param categoryId
     * @param sortId
     * @return
     */
    List<Video> queryVideoListOrderByCategoryId(int categoryId,int sortId);

    /**
     * queryAllVideoListOrder
     * @param sortId
     * @return
     */
    List<Video> queryAllVideoListOrder(int sortId);
}
