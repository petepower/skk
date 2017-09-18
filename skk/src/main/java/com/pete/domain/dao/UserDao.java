package com.pete.domain.dao;

import com.pete.domain.base.BaseDao;
import com.pete.domain.entity.AcctUser;

public interface UserDao extends BaseDao<AcctUser, Integer> {
	/**
	 * 根据用户名查找用户
	 * @param account
	 * @return
	 * @time 2017年9月11日 下午11:02:20
	 * @author peter
	 */
	AcctUser findByAccount(String account);
}
