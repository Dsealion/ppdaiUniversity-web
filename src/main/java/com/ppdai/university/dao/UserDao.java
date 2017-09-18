package com.ppdai.university.dao;

import java.util.List;

import com.ppdai.university.domain.UserDO;
import com.ppdai.university.exception.DAOException;


 /**
 *  DAO
 */
public interface UserDao {

	/**
	 * 插入  
	 * @param userDO
	 * @return 主键
	 * @throws DAOException
	 */
	Integer insert(UserDO userDO) throws DAOException;

	/**
	 * 根据ID更新 全部属性
	 * @param userDO
	 * @return 更新行数
	 * @throws DAOException
	 */
	Integer update(UserDO userDO) throws DAOException;

	/**
	 * 根据ID删除 
	 * @param id
	 * @return 删除行数
	 * @throws DAOException
	 */
	Integer deleteById(Long id) throws DAOException;

	/**
	 * 动态更新 部分属性，包括全部
	 * @param userDO
	 * @return 更新行数
	 * @throws DAOException
	 */
	Integer updateDynamic(UserDO userDO) throws DAOException;

	/**
	 * 根据ID查询 一个 
	 * @param id
	 * @return UserDO
	 * @throws DAOException
	 */
	UserDO selectById(Long id) throws DAOException;

	/**
	 * 根据   动态返回记录数
	 * @param userDO
	 * @return 记录条数
	 * @throws DAOException
	 */
	Long selectCountDynamic(UserDO userDO) throws DAOException;

	/**
	 * 根据   动态返回  列表
	 * @param userDO
	 * @return List<UserDO>
	 * @throws DAOException
	 */
	List<UserDO> selectDynamic(UserDO userDO) throws DAOException;

	/**
	 * 根据   动态返回  Limit 列表
	 * @param userDO start,pageSize属性必须指定
	 * @return List<UserDO>
	 * @throws DAOException
	 */
	List<UserDO> selectDynamicPageQuery(UserDO userDO) throws DAOException;
}
