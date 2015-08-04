package com.myself.finance.dao;

import java.util.List;

import com.myself.finance.entity.Role;
import com.myself.finance.page.Page;
import com.myself.finance.param.RoleQueryParam;

public interface RoleDao {

	int save(Role param);
	int update(Role param);
	int delete(Role param);
	Role getData(Role param);
	List<Role> list(Page<RoleQueryParam> param);
	List<Role> queryRolesByUserId(String userId);
}
