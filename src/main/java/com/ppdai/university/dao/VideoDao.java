package com.ppdai.university.dao;

import com.ppdai.university.model.Video;
import java.util.Map;
import org.apache.ibatis.annotations.Param;

import java.util.List;

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

    /**
     * queryVideoList
     * @param params
     * @return
     */
    List<Video> queryVideoList(Map<String,Object> params);

    /**
     * queryVideoAllList
     * @return
     */
    List<Video> queryAllVideoList();

    /**
     * queryVideoInfoByName
     * @param name
     * @return
     */
    List<Video> queryVideoInfoByName(String name);

    /**
     * queryVideoListByProviderName
     * @param providerName
     * @return
     */
    List<Video> queryVideoListByProviderName(String providerName);

    /**
     * queryVideoListByCategoryId
     * @param categoryId
     * @return
     */
    List<Video> queryVideoListByCategoryId(@Param("categoryId") int categoryId);

    /**
     * queryVideoListOrderByCategoryId
     * @param categoryId
     * @return
     */
    List<Video> queryVideoListOrderByCategoryId(@Param("categoryId") int categoryId,int sortId);

    /**
     * queryAllVideoListOrder
     * @return
     */
    List<Video> queryAllVideoListOrder();
}
