package com.myself.finance.mapper;

import java.util.List;

import com.myself.finance.entity.Permission;
import com.myself.finance.page.Page;
import com.myself.finance.param.PermissionQueryParam;

public interface PermissionMapper {

	int save(Permission param);
	int update(Permission param);
	int delete(Permission param);
	Permission getData(Permission param);
	
	List<Permission> list(PermissionQueryParam param);
	List<Permission> query(Page<PermissionQueryParam> param);
	List<Permission> queryPermissionsByRoleId(String roleId);
}
