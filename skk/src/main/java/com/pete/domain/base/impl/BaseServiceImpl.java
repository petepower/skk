package com.pete.domain.base.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.pete.domain.base.BaseDao;
import com.pete.domain.base.BaseService;

public class BaseServiceImpl<T, PK extends Serializable> implements BaseService<T, PK> {

	@Autowired
	BaseDao<T, PK> baseDao;
	
	
	@Override
	public T load(PK id) {
		return baseDao.load(id);
	}

	@Override
	public T get(PK id) {
		return baseDao.get(id);
	}

	@Override
	public List<T> findAll() {
		return baseDao.findAll();
	}

	@Override
	public void persist(T entity) {
		baseDao.persist(entity);
	}

	@Override
	public PK save(T entity) {
		return baseDao.save(entity);
	}

	@Override
	public void saveOrUpdate(T entity) {
		baseDao.saveOrUpdate(entity);
	}

	@Override
	public void delete(PK id) {
		baseDao.delete(id);
	}

	@Override
	public void flush() {
		baseDao.flush();
	}

}
