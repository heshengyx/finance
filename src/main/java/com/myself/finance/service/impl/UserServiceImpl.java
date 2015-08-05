package com.myself.finance.service.impl;

import java.util.Date;

import org.apache.commons.beanutils.PropertyUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myself.common.exception.ServiceException;
import com.myself.common.utils.UIDGeneratorUtil;
import com.myself.finance.dao.AccountDao;
import com.myself.finance.dao.UserDao;
import com.myself.finance.entity.Account;
import com.myself.finance.entity.User;
import com.myself.finance.param.UserParam;
import com.myself.finance.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	private final static Logger logger = LoggerFactory
			.getLogger(UserServiceImpl.class);
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private AccountDao accountDao;

	public int save(User param) {
		param.setId(UIDGeneratorUtil.getUID());
		param.setCreateTime(new Date());
		return userDao.save(param);
	}

	@Transactional
	public void register(UserParam param) {
		String kaptchaCode = param.getKaptchaCode();
		String kaptchaValue = param.getKaptchaValue();
		if (!kaptchaValue.equals(kaptchaCode)) {
			logger.info("验证码输入不正确，kaptchaCode={}，kaptchaCode={}", new Object[]{kaptchaCode, kaptchaValue});
			throw new ServiceException("验证码输入不正确");
		}
		
		User user = new User();
		try {
			PropertyUtils.copyProperties(user, param);
		} catch (Exception e) {
			logger.error("User属性复制出错", e);
			throw new ServiceException("用户注册失败");
		}
		user.setAccount(user.getUsername());
		try {
			save(user);
		} catch (Exception e) {
			logger.error("用户注册失败", e);
			throw new ServiceException("用户注册失败");
		}
		Account account = new Account();
		account.setId(UIDGeneratorUtil.getUID());
		account.setUserId(user.getId());
		account.setBalance(0L);
		account.setStatus("1");
		account.setCreateTime(new Date());
		
		try {
			accountDao.save(account);
		} catch (Exception e) {
			logger.error("账户开通失败", e);
			throw new ServiceException("用户注册失败");
		}
		
	}

	public int update(User param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int delete(User param) {
		// TODO Auto-generated method stub
		return 0;
	}

	public User getData(User param) {
		return userDao.getData(param);
	}
}
