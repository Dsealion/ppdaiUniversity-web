package com.ppdai.university.domain;

import java.util.Date;



public class UserDO  {

/** 主键 */
private Integer id;

/** 用户名称 */
private String userName;

/** 密码 */
private String password;

/** 邮箱账号 */
private String email;

/** 激活码 */
private String token;

/** 激活状态 ，0-未激活，1-已激活 */
private Integer status;

/** 创建时间 */
private Date inserttime;

/** 最后更新时间 */
private Date updatetime;

/** 逻辑删除0为删除 */
private Boolean isactive;

/**
* 设置 主键
* @param id
*/
	public void setId(Integer id) {
	this.id = id;
}
/**
* 设置 用户名称
* @param userName
*/
	public void setUserName(String userName) {
	this.userName = userName;
}
/**
* 设置 密码
* @param password
*/
	public void setPassword(String password) {
	this.password = password;
}
/**
* 设置 邮箱账号
* @param email
*/
	public void setEmail(String email) {
	this.email = email;
}
/**
* 设置 激活码
* @param token
*/
	public void setToken(String token) {
	this.token = token;
}
/**
* 设置 激活状态 ，0-未激活，1-已激活
* @param status
*/
	public void setStatus(Integer status) {
	this.status = status;
}
/**
* 设置 创建时间
* @param inserttime
*/
	public void setInserttime(Date inserttime) {
	this.inserttime = inserttime;
}
/**
* 设置 最后更新时间
* @param updatetime
*/
	public void setUpdatetime(Date updatetime) {
	this.updatetime = updatetime;
}
/**
* 设置 逻辑删除0为删除
* @param isactive
*/
	public void setIsactive(Boolean isactive) {
	this.isactive = isactive;
}
/**
* 获取 主键
* @return id
*/
	public Integer getId() {
	return id;
}
/**
* 获取 用户名称
* @return userName
*/
	public String getUserName() {
	return userName;
}
/**
* 获取 密码
* @return password
*/
	public String getPassword() {
	return password;
}
/**
* 获取 邮箱账号
* @return email
*/
	public String getEmail() {
	return email;
}
/**
* 获取 激活码
* @return token
*/
	public String getToken() {
	return token;
}
/**
* 获取 激活状态 ，0-未激活，1-已激活
* @return status
*/
	public Integer getStatus() {
	return status;
}
/**
* 获取 创建时间
* @return inserttime
*/
	public Date getInserttime() {
	return inserttime;
}
/**
* 获取 最后更新时间
* @return updatetime
*/
	public Date getUpdatetime() {
	return updatetime;
}
/**
* 获取 逻辑删除0为删除
* @return isactive
*/
	public Boolean getIsactive() {
	return isactive;
}

}