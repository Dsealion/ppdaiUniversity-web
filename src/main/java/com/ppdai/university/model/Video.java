package com.ppdai.university.model;

import java.util.Date;

/**
 * Created by zhangshibo on 2017/8/31.
 */
public class Video {

    private Integer id;

    private String name;

    private String intro;

    private Date creationdate;

    private Date updatetime;

    private Integer categoryid;

    private String providername;

    private String url;

    private String oriurl;

    private String thumbnailurl;

    private Integer videostateid;

    private String remark;

    private Integer playcount;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro == null ? null : intro.trim();
    }

    public Date getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(Date creationdate) {
        this.creationdate = creationdate;
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Integer getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(Integer categoryid) {
        this.categoryid = categoryid;
    }

    public String getProvidername() {
        return providername;
    }

    public void setProvidername(String providername) {
        this.providername = providername == null ? null : providername.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public String getOriurl() {
        return oriurl;
    }

    public void setOriurl(String oriurl) {
        this.oriurl = oriurl == null ? null : oriurl.trim();
    }

    public String getThumbnailurl() {
        return thumbnailurl;
    }

    public void setThumbnailurl(String thumbnailurl) {
        this.thumbnailurl = thumbnailurl == null ? null : thumbnailurl.trim();
    }

    public Integer getVideostateid() {
        return videostateid;
    }

    public void setVideostateid(Integer videostateid) {
        this.videostateid = videostateid;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public Integer getPlaycount() {
        return playcount;
    }

    public void setPlaycount(Integer playcount) {
        this.playcount = playcount;
    }
}
