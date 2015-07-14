<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-用户注册</title>		
</head>

<body>
	<navTitle>注册</navTitle>
	<div class="container-content">
		<div class="row">
		  <div class="col-md-8">
		  	<div class="form-content">
		    <form class="form-horizontal">
		      <div class="form-group">
			    <label for="inputName" class="col-sm-3 control-label">用户名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputName" placeholder="输入用户名">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPhone" class="col-sm-3 control-label">手机号码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPhone" placeholder="输入手机号码">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPassword" class="col-sm-3 control-label">登录密码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPassword" placeholder="输入登录密码">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPasswordConfirm" class="col-sm-3 control-label">确认密码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="inputPasswordConfirm" placeholder="输入确认密码">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <div class="col-sm-offset-3 col-sm-6">
			      <button type="submit" class="btn btn-primary">立即注册</button>
			    </div>
			  </div>
		    </form>
		    </div>
		  </div>
		  <div class="col-md-4">
		    <div class="form-content">
		      <p class="text-center">已有账号？ <a href="${ctx}/login">立即登录</a></p>
		      <p class="text-center"><img src="${ctx}/images/money.png" /></p>
		    </div>
		  </div>
		</div>
	</div>
</body>
</html>
