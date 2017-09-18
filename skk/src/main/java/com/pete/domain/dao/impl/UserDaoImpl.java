package com.pete.domain.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.pete.domain.base.impl.BaseDaoImpl;
import com.pete.domain.dao.UserDao;
import com.pete.domain.entity.AcctUser;

@Repository("userDao")
public class UserDaoImpl extends BaseDaoImpl<AcctUser,Integer> implements UserDao {


	@Override
	public AcctUser load(Integer id) {
		return (AcctUser) getCurrentSession().load(AcctUser.class, id);
	}

	@Override
	public AcctUser get(Integer id) {
		return (AcctUser) getCurrentSession().get(AcctUser.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<AcctUser> findAll() {
		List<AcctUser> acctUsers = getCurrentSession().createQuery("from AcctUser").setCacheable(true).list();  
		return acctUsers;
	}

	@Override
	public void persist(AcctUser entity) {
		getCurrentSession().persist(entity);  
	}

	@Override
	public Integer save(AcctUser entity) {
		 return (Integer) getCurrentSession().save(entity);  
	}
	

	@Override
	public void saveOrUpdate(AcctUser entity) {
		getCurrentSession().saveOrUpdate(entity);
	}

	@Override
	public void delete(Integer id) {
		AcctUser entity = this.load(id);  
		getCurrentSession().delete(entity);
	}

	@Override
	public void flush() {
		getCurrentSession().flush();  
	}

	@Override
	public AcctUser findByAccount(String account) {
		AcctUser acctUser = (AcctUser) getCurrentSession()  
	            .createQuery(" from acct_user where account = :account ").setParameter("account", account)  
	            .uniqueResult();  
		return acctUser;
	}

}
