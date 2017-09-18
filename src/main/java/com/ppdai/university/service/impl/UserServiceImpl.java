package com.ppdai.university.service.impl;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;

import com.ppdai.university.dao.UserDao;
import com.ppdai.university.domain.UserDO;
import com.ppdai.university.exception.DAOException;
import com.ppdai.university.exception.ServiceException;
import com.ppdai.university.service.UserService;

@Service(value="userService")
public class UserServiceImpl  implements UserService{

	private Log logger = LogFactory.getLog(this.getClass());

	@Autowired
	private UserDao userDAO;

	@Override
	public Integer insert(UserDO userDO) throws ServiceException {
		try {
			return userDAO.insert(userDO);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}

	@Override
	public int update(UserDO userDO,boolean isAllField) throws ServiceException {
		try {
			if(isAllField){
				return (Integer) userDAO.update(userDO);
			}else{
				return (Integer) userDAO.updateDynamic(userDO);
			}
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}

	@Override
	public int deleteById(Long id) throws ServiceException {
		try {
			return (Integer) userDAO.deleteById(id);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}


	@Override
	public UserDO selectById(Long id) throws ServiceException {
		try {
			return userDAO.selectById(id);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}

	@Override
	public Long selectCountDynamic(UserDO userDO) throws ServiceException {
		try {
			return userDAO.selectCountDynamic(userDO);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}

	@Override
	public List<UserDO> selectDynamic(UserDO userDO) throws ServiceException {
		try {
			return userDAO.selectDynamic(userDO);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}
	

	private List<UserDO> selectDynamicPageQuery(UserDO userDO) throws ServiceException {
		try {
			return userDAO.selectDynamicPageQuery(userDO);
		}catch(DAOException e){
			logger.error(e);
            throw new ServiceException(e);
		}
	}

}
