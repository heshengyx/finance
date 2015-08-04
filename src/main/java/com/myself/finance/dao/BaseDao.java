package com.myself.finance.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;

public abstract class BaseDao<T> extends SqlSessionDaoSupport {

	@Autowired
	protected SqlSessionTemplate sqlSessionTemplate;
	
	protected <S> S getMapper(Class<S> clazz) {
		return getSqlSession().getMapper(clazz);
	}

}
