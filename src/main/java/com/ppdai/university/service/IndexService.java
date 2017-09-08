package com.ppdai.university.service;

import com.ppdai.university.model.Menu;
import com.ppdai.university.model.Video;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/1.
 */
public interface IndexService {
    /**
     * queryMenuInfo
     * @return
     */
    public List<Menu> queryMenuInfo();

    /**
     * queryVideoList
     * @param topNum
     * @param categoryId
     * @return
     */
    public List<Video> queryVideoList(int topNum, int categoryId);

    /**
     * queryVideoAllList
     * @return
     */
    public List<Video> queryVideoAllList();

    /**
     * queryVideoListByName
     * @param name
     * @return
     */
    public Video queryVideoListByName(String name);

    /**
     * queryVideoListByProviderName
     * @param providerName
     * @return
     */
    public List<Video> queryVideoListByProviderName(String providerName);
}
