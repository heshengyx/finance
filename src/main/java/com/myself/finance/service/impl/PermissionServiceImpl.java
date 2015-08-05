package com.myself.finance.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.PermissionDao;
import com.myself.finance.entity.Permission;
import com.myself.finance.page.Page;
import com.myself.finance.param.PermissionQueryParam;
import com.myself.finance.service.PermissionService;

@Service("permissionService")
public class PermissionServiceImpl implements PermissionService {

	@Autowired
	private PermissionDao permissionDao;
	
	public List<Permission> queryPermissionsByRoleId(String roleId) {
		return permissionDao.queryPermissionsByRoleId(roleId);
	}

	public int save(Permission param) {
		param.setId(UIDGeneratorUtil.getUID());
		param.setStatus("1");
		param.setCreateTime(new Date());
		return permissionDao.save(param);
	}

	public int update(Permission param) {
		return permissionDao.update(param);
	}

	public int delete(Permission param) {
		return permissionDao.delete(param);
	}

	public Permission getData(Permission param) {
		return permissionDao.getData(param);
	}

	public List<Permission> list(Page<PermissionQueryParam> param) {
		return permissionDao.list(param);
	}

	public List<Permission> list(PermissionQueryParam param) {
		return permissionDao.list(param);
	}

}
