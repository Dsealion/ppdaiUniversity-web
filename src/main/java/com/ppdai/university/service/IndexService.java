package com.ppdai.university.service;

import com.ppdai.university.model.Menu;
import com.ppdai.university.model.Video;

import java.util.List;

/**
 * Created by zhangshibo on 2017/9/1.
 */
public interface IndexService {

    /**
     * search
     * @param type
     * @param content
     * @return
     */
    public List<Video> search(int type,String content);

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
     * queryVideoListByName
     * @param name
     * @return
     */
    public List<Video> queryVideoListByName(String name);

    /**
     * queryVideoListByProviderName
     * @param providerName
     * @return
     */
    public List<Video> queryVideoListByProviderName(String providerName);
}
