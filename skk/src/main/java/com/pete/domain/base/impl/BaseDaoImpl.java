package com.pete.domain.base.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.pete.domain.base.BaseDao;

public class BaseDaoImpl<T, PK extends Serializable> implements BaseDao<T, PK> {

	@Autowired
	public SessionFactory sessionFactory;

	public Session getCurrentSession() {
		return this.sessionFactory.getCurrentSession();
	}
	
	@Override
	public T load(PK id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T get(PK id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<T> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void persist(T entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PK save(T entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveOrUpdate(T entity) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(PK id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}

}
