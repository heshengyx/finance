package com.myself.finance.security;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.CollectionUtils;

import com.myself.finance.dao.PermissionDao;
import com.myself.finance.dao.RoleDao;
import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.Permission;
import com.myself.finance.entity.Role;
import com.myself.finance.entity.User;

public class SecurityRealm extends AuthorizingRealm {

	@Autowired
	private UserDao userDao;
	
	@Autowired
	private RoleDao roleDao;
	
	@Autowired
	private PermissionDao permissionDao;

	/**
	 * 为当前登录的Subject授予角色和权限
	 * 
	 *  经测试:本例中该方法的调用时机为需授权资源被访问时
	 *  经测试:并且每次访问需授权资源时都会执行该方法中的逻辑,这表明本例中默认并未启用AuthorizationCache
	 *  个人感觉若使用了Spring3
	 *      .1开始提供的ConcurrentMapCache支持,则可灵活决定是否启用AuthorizationCache
	 *  比如说这里从数据库获取权限信息时,先去访问Spring3.1提供的缓存,而不使用Shior提供的AuthorizationCache
	 */
	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		SimpleAuthorizationInfo simpleAuthorInfo = null;
		/*String currentUsername = (String) super
				.getAvailablePrincipal(principals);*/
		User user = (User) super
				.getAvailablePrincipal(principals);
		List<String> roleList = new ArrayList<String>();
		List<String> permissionList = new ArrayList<String>();

		//User user = userService.getByUserName(currentUsername);
		if (null != user) {
			List<Role> roles = roleDao.queryRolesByUserId(user.getId());
			if (!CollectionUtils.isEmpty(roles)) {
				for (Role role : roles) {
					roleList.add(role.getName());
					List<Permission> permissions = permissionDao.queryPermissionsByRoleId(role.getId());
					if (!CollectionUtils.isEmpty(permissions)) {
						for (Permission permission : permissions) {
							if (!StringUtils.isEmpty(permission.getName())) {
								permissionList.add(permission.getName());
							}
						}
					}
				}
				simpleAuthorInfo = new SimpleAuthorizationInfo();
				simpleAuthorInfo.addRoles(roleList);
				simpleAuthorInfo.addStringPermissions(permissionList);
			}
		}
		return simpleAuthorInfo;
	}

	/**
	 * 验证当前登录的Subject
	 * 
	 * 经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时
	 */
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken authcToken) throws AuthenticationException {
		AuthenticationInfo authcInfo = null;
		UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
		System.out.println("验证当前Subject时获取到token为"
				+ ReflectionToStringBuilder.toString(token,
						ToStringStyle.MULTI_LINE_STYLE));
		User user = userDao.getUserByAccount(token.getUsername());
		if (null != user) {
			authcInfo = new SimpleAuthenticationInfo(user,
					user.getPassword(), user.getName());
			this.setSession("currentUser", user);
		}
		return authcInfo;
	}

	private void setSession(Object key, Object value) {
		Subject currentUser = SecurityUtils.getSubject();
		if (null != currentUser) {
			Session session = currentUser.getSession();
			System.out
				.println("Session默认超时时间为[" + session.getTimeout() + "]毫秒");
			if (null != session) {
				session.setAttribute(key, value);
			}
		}
	}
}
