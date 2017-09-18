package com.pete.domain.service;

import com.pete.domain.base.BaseService;
import com.pete.domain.entity.AcctUser;

public interface UserService extends BaseService<AcctUser, Integer>{

	AcctUser findByAccount(String account);
}
