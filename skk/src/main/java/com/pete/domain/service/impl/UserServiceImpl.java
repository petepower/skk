package com.pete.domain.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pete.domain.base.impl.BaseServiceImpl;
import com.pete.domain.dao.UserDao;
import com.pete.domain.entity.AcctUser;
import com.pete.domain.service.UserService;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<AcctUser, Integer> implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	public AcctUser load(Integer id) {
		return userDao.load(id);
	}

	@Override
	public AcctUser get(Integer id) {
		return userDao.get(id);
	}

	@Override
	public List<AcctUser> findAll() {
		return userDao.findAll();
	}

	@Override
	public void persist(AcctUser entity) {
		userDao.persist(entity);
	}

	@Override
	public Integer save(AcctUser entity) {
		return userDao.save(entity);
	}

	@Override
	public void saveOrUpdate(AcctUser entity) {
		userDao.saveOrUpdate(entity);
	}

	@Override
	public void delete(Integer id) {
		userDao.delete(id);
	}

	@Override
	public void flush() {
		userDao.flush();
	}

	@Override
	public AcctUser findByAccount(String account) {
		return userDao.findByAccount(account);
	}

}
