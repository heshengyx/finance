<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-用户登录</title>
	<script>
	$(document).ready(function() {
		$('#loginForm').bootstrapValidator({
			submitHandler: function(validator, form, submitButton) {
				//form.submit();
				//validator.defaultSubmit();
				/* $.ajax({
				    url: '${ctx}/login/refer',
				    type: 'POST',
				    dataType: 'json',
				    data: form.serialize(),
				    success: function(data) {
				        //alert("1");
				    },
				}); */
				$.post(form.attr('action'), form.serialize(), function(result) {
					if (result.code == '500') {
						$('#message').text(result.message);
						validator.disableSubmitButtons(false);
					}
			    }, 'json');
            },
			fields: {
				account: {
                    validators: {
                        notEmpty: {
                            message: '用户名不能为空'
                        }
                    }
                },
                password: {
                    validators: {
                        notEmpty: {
                            message: '密码不能为空'
                        }
                    }
                }
			}
        });
	});
	</script>
</head>

<body>
	<navTitle>登录</navTitle>
	<div class="container-content">
		<div class="row">
		  <div class="col-md-8"><img src="${ctx}/images/login.png" /></div>
		  <div class="col-md-4">
		  <div class="form-content">
		  	  <div id="message" class="btn-danger"></div>
			  <form id="loginForm" action="${ctx}/login/refer" method="post">
		        <div class="form-group">
				  <label for="inputUsername">用户名</label>
				  <input type="text" class="form-control" name="account" id="inputUsername" placeholder="手机号/邮箱">
				</div>
				<div class="form-group">
				  <label for="inputPassword">密码</label>
				  <input type="password" class="form-control" name="password" id="inputPassword" placeholder="密码">
				</div>
		        <div class="checkbox">
		          <label>
		            <input type="checkbox" value="remember-me"> 记住用户名
		          </label>
		        </div>
		        <button type="submit" class="btn btn-lg btn-primary btn-block">登录</button>
		      </form>
		  </div>
		  <div class="form-content">
	        <p class="text-center">没有账号？ <a href="${ctx}/register">免费注册</a></p>
	        <hr class="divider" />
	        <!-- <p><span>您还可以使用合作账号登录</span>
                  <a id="partner-qq" class="partner" href="http://www.renrendai.com/oauth/qq/login!beForeQQLogin.action?type=1">腾讯账号</a>
                  <a id="partner-weibo" class="partner" href="https://api.weibo.com/oauth2/authorize?client_id=915664347&redirect_uri=http%3A%2F%2Fwww.renrendai.com%2Foauth%2Fweibo%2Flogin.action&forcelogin=true">新浪微博</a></p> -->
	      </div>
		  </div>
		</div>
	</div>
</body>
</html>
