package com.myself.finance.mapper;

import java.util.List;

import com.myself.finance.entity.UserAuth;
import com.myself.finance.param.UserAuthQueryParam;

public interface UserAuthMapper {

	List<UserAuth> list(UserAuthQueryParam param);
}
