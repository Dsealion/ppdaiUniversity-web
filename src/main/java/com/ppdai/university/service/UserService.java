package com.ppdai.university.service;

import java.util.List;

import com.ppdai.ppddaiuniversity.exception.ServiceException;
import com.ppdai.university.domain.UserDO;
 /**
 *  Service
 */
public interface UserService {

	/**
	 * 插入  
	 * @param userDO
	 * @return 主键
	 * @throws ServiceException
	 */
	Integer insert(UserDO userDO) throws ServiceException;

	/**
	 * 根据UserDO对象更新 
	 * @param userDO
	 * @param isAllField 是否更新所有字段(false 动态更新字段，true 更新所有字段,传null或false将动态更新，建议动态更新)
	 * @return 更新行数
	 * @throws ServiceException
	 */
	int update(UserDO userDO,boolean isAllField) throws ServiceException;

//	/**
//	 * 根据ID更新 全部字段
//	 * @param userDO
//	 * @return 更新行数
//	 * @throws ServiceException
//	 */
//	int updateById(UserDO userDO) throws ServiceException;

	/**
	 * 根据ID删除 
	 * @param id
	 * @return 物理删除行
	 * @throws ServiceException
	 */
	int deleteById(Long id) throws ServiceException;

//	/**
//	 * 动态更新 部分字段
//	 * @param userDO
//	 * @return 更新行数
//	 * @throws ServiceException
//	 */
//	int updateDynamic(UserDO userDO) throws ServiceException;

	/**
	 * 根据ID查询 一个 
	 * @param id
	 * @return UserDO
	 * @throws ServiceException
	 */
	UserDO selectById(Long id) throws ServiceException;

	/**
	 * 根据   动态返回记录数
	 * @param userDO
	 * @return 记录数
	 * @throws ServiceException
	 */
	Long selectCountDynamic(UserDO userDO) throws ServiceException;

	/**
	 * 动态返回  列表
	 * @param userDO
	 * @return List<UserDO>
	 * @throws ServiceException
	 */
	List<UserDO> selectDynamic(UserDO userDO) throws ServiceException;

}
