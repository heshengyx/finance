package com.myself.finance.security;

import java.text.MessageFormat;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.shiro.config.Ini;
import org.apache.shiro.config.Ini.Section;
import org.springframework.beans.factory.FactoryBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

import com.myself.finance.dao.PermissionDao;
import com.myself.finance.entity.Permission;
import com.myself.finance.param.PermissionQueryParam;


public class ChainDefinitionSectionMetaSource implements
		FactoryBean<Ini.Section> {

	@Autowired  
    private PermissionDao permissionDao;
	
	private String filterChainDefinitions;

	/**
	 * 默认premission字符串
	 */
	public static final String PREMISSION_STRING = "perms[\"{0}\"]";

	/**
	 * 通过filterChainDefinitions对默认的url过滤定义
	 * 
	 * @param filterChainDefinitions
	 *            默认的url过滤定义
	 */
	public void setFilterChainDefinitions(String filterChainDefinitions) {
		this.filterChainDefinitions = filterChainDefinitions;
	}

	public Section getObject() throws Exception {
		//获取所有Resource  
		List<Permission> permissions = permissionDao.list(new PermissionQueryParam());
  
        Ini ini = new Ini();  
        //加载默认的url  
        ini.load(filterChainDefinitions);  
        Ini.Section section = ini.getSection(Ini.DEFAULT_SECTION_NAME);  
        //循环Resource的url,逐个添加到section中。section就是filterChainDefinitionMap,  
        //里面的键就是链接URL,值就是存在什么条件才能访问该链接  
        if (!CollectionUtils.isEmpty(permissions)) {
			for (Permission permission : permissions) {
				if(StringUtils.isNotEmpty(permission.getUrl()) && StringUtils.isNotEmpty(permission.getName())) {
					section.put(permission.getUrl(),  MessageFormat.format(PREMISSION_STRING, permission.getName()));
				}
			}
		}
		return section;
	}

	public Class<?> getObjectType() {
		return this.getClass();
	}

	public boolean isSingleton() {
		return false;
	}

}
