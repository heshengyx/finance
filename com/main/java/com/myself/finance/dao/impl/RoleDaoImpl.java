package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.RoleDao;
import com.myself.finance.entity.Role;
import com.myself.finance.mapper.RoleMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.RoleQueryParam;

@Repository
public class RoleDaoImpl extends BaseDao<RoleMapper> implements RoleDao {

	public List<Role> queryRolesByUserId(String userId) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.queryRolesByUserId(userId);
	}

	public int save(Role param) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.save(param);
	}

	public int update(Role param) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.update(param);
	}

	public int delete(Role param) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.delete(param);
	}

	public Role getData(Role param) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.getData(param);
	}

	public List<Role> list(Page<RoleQueryParam> param) {
		RoleMapper mapper = getMapper(RoleMapper.class);
		return mapper.query(param);
	}

}
