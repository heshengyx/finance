package com.myself.finance.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.myself.finance.dao.BaseDao;
import com.myself.finance.dao.PermissionDao;
import com.myself.finance.entity.Permission;
import com.myself.finance.mapper.PermissionMapper;
import com.myself.finance.page.Page;
import com.myself.finance.param.PermissionQueryParam;

@Repository
public class PermissionDaoImpl extends BaseDao<PermissionMapper> implements PermissionDao {

	public List<Permission> queryPermissionsByRoleId(String roleId) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.queryPermissionsByRoleId(roleId);
	}

	public List<Permission> list(PermissionQueryParam param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.list(param);
	}

	public int save(Permission param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.save(param);
	}

	public int update(Permission param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.update(param);
	}

	public int delete(Permission param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.delete(param);
	}

	public Permission getData(Permission param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.getData(param);
	}

	public List<Permission> list(Page<PermissionQueryParam> param) {
		PermissionMapper mapper = getMapper(PermissionMapper.class);
		return mapper.query(param);
	}

}
