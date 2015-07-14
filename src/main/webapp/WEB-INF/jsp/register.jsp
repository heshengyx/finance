<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-用户注册</title>
	<script>
	$(document).ready(function() {
		$('#registerForm').bootstrapValidator({
			message: 'This value is not valid',
	        excluded: [':disabled'],
			submitHandler: function(validator, form, submitButton) {
                // Do nothing
                alert(1);
            },
			fields: {
				username: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                phone: {
                    validators: {
                        notEmpty: {
                            message: '手机号码不能为空'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '登录密码不能为空'
                        }
                    }
                },
                passwordConfirm: {
                    validators: {
                        notEmpty: {
                            message: '确认密码不能为空'
                        }
                    }
                }
			}
        });
	});
	</script>		
</head>

<body>
	<navTitle>注册</navTitle>
	<div class="container-content">
		<div class="row">
		  <div class="col-md-8">
		  	<div class="form-content">
		    <form id="registerForm" class="form-horizontal">
		      <div class="form-group">
			    <label for="inputUsername" class="col-sm-3 control-label">用户名</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" name="username" id="inputUsername" placeholder="输入用户名">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPhone" class="col-sm-3 control-label">手机号码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" name="phone" id="inputPhone" placeholder="输入手机号码">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPassword" class="col-sm-3 control-label">登录密码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" name="password" id="inputPassword" placeholder="输入登录密码">
			    </div>
			  </div>
			  <br/>
			  <div class="form-group">
			    <label for="inputPasswordConfirm" class="col-sm-3 control-label">确认密码</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" name="passwordConfirm" id="inputPasswordConfirm" placeholder="输入确认密码">
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
