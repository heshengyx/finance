package com.myself.finance.service.impl;

import java.util.Date;

import org.apache.commons.beanutils.PropertyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.myself.common.exception.ServiceException;
import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.User;
import com.myself.finance.param.UserParam;
import com.myself.finance.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

	public int save(User user) {
		user.setId(UIDGeneratorUtil.getUID());
		user.setCreateTime(new Date());
		return userDao.save(user);
	}

	public User getUserByAccount(String account) {
		return userDao.getUserByAccount(account);
	}

	public void register(UserParam param) {
		String kaptchaCode = param.getKaptchaCode();
		String kaptchaValue = param.getKaptchaValue();
		if (!kaptchaValue.equals(kaptchaCode)) {
			throw new ServiceException("验证码输入不正确");
		}
		
		User user = new User();
		try {
			PropertyUtils.copyProperties(user, param);
		} catch (Exception e) {
			e.printStackTrace();
		}
		save(user);
	}
}
