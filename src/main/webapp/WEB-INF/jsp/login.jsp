<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-用户登录</title>		
</head>

<body>
	
	<div class="container-login">
		<div class="row">
		  <div class="col-md-8"><img src="${ctx}/images/login.png" /></div>
		  <div class="col-md-4">
		  <div class="form-content">
			  <form class="form-signin">
		        <div class="form-group">
				  <label for="exampleInputEmail1">用户名</label>
				  <input type="email" class="form-control" id="exampleInputEmail1" placeholder="手机号/邮箱">
				</div>
				<div class="form-group">
				  <label for="exampleInputPassword1">密码</label>
				  <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
				</div>
		        <div class="checkbox">
		          <label>
		            <input type="checkbox" value="remember-me"> 记住用户名
		          </label>
		        </div>
		        <button class="btn btn-lg btn-primary btn-block" type="submit">登录</button>
		      </form>
		      <div class="form-signin">
		        <p class="text-center">没有账号？ <a href="#">免费注册</a></p>
		        <hr class="divider" />
		        <!-- <p><span>您还可以使用合作账号登录</span>
                   <a id="partner-qq" class="partner" href="http://www.renrendai.com/oauth/qq/login!beForeQQLogin.action?type=1">腾讯账号</a>
                   <a id="partner-weibo" class="partner" href="https://api.weibo.com/oauth2/authorize?client_id=915664347&redirect_uri=http%3A%2F%2Fwww.renrendai.com%2Foauth%2Fweibo%2Flogin.action&forcelogin=true">新浪微博</a></p> -->
		      </div>
		  </div>
		  </div>
		</div>
	</div>
</body>
</html>
