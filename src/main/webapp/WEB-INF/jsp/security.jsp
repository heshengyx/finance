<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-我要理财</title>
	<style type="text/css">
	.container-nav ol {
	  background-color: #F2F2F2;
	}
	.container-content > .row {
	  margin-top: 10px;
	  margin-bottom: 10px;
	}
	.row-height {
	  height: 5px;
	}
	.container-panel {
	  /* border: 1px solid #dddddd;
  	  background-color: #FFFFFF; */
	}
	.container-panel-content {
	  border: 1px solid #dddddd;
  	  background-color: #FFFFFF;
  	  padding-left: 20px;
  	  padding-right: 20px;
	}
	.form-date {
	  width: 100px;
	}
	.container-tabs-content {
	  border-top: 0;
	  padding-top: 20px;
	}
	.img-bank {
	  width: 120px;
	  height: 33px;
	  border: 1px solid #dddddd;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel-content">
	  <h4>安全信息</h4>
	  <table class="table">
	  <thead>
        <tr>
          <td><h4><span class="glyphicon glyphicon-credit-card"></span>&nbsp;&nbsp;昵称</h4></td>
          <td><h5>已设置</h5></td>
          <td class="text-right text-muted"><h5>宫本宝藏</h5></td>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td><h4><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;实名认证</h4></td>
          <td class="text-danger"><h5>未设置</h5></td>
          <td class="text-right"><h5><a href="#">设置</a></h5></td>
        </tr>
        <tr>
          <td><h4><span class="glyphicon glyphicon-lock"></span>&nbsp;&nbsp;登录密码</h4></td>
          <td class="text-danger"><h5>未设置</h5></td>
          <td class="text-right"><h5><a href="#">设置</a></h5></td>
        </tr>
        <tr>
          <td><h4><span class="glyphicon glyphicon-envelope"></span>&nbsp;&nbsp;绑定邮箱</h4></td>
          <td class="text-danger"><h5>未设置</h5></td>
          <td class="text-right"><h5><a href="#">设置</a></h5></td>
        </tr>
        <tr>
          <td><h4><span class="glyphicon glyphicon-phone"></span>&nbsp;&nbsp;绑定手机</h4></td>
          <td><h5>132****5714</h5></td>
          <td class="text-right"><h5><a href="#">修改</a></h5></td>
        </tr>
        <tr>
          <td><h4><span class="glyphicon glyphicon-calendar"></span>&nbsp;&nbsp;交易密码</h4></td>
          <td class="text-danger"><h5>未设置</h5></td>
          <td class="text-right"><h5><a href="#">设置</a></h5></td>
        </tr>
      </tbody>
      </table>
	</div>
	<jscript>
	<script src="${ctx}/js/bootstrap-datetimepicker.min.js"></script>
	<script>
	$(document).ready(function() {
		$('#inputDate').datetimepicker({
    		language: 'zh-CN',
    		minView: "month",
    		format: 'yyyy-mm-dd',
    		autoclose: true,
    		todayBtn: true,
    		todayHighlight: true
    	});
		$('#dataForm').bootstrapValidator({
			submitHandler: function(validator, form, submitButton) {
				//validator.defaultSubmit();
				$.post(form.attr('action'), form.serialize(), function(result) {
					if (result.code == '500') {
						$('#message').text(result.message);
						validator.disableSubmitButtons(false);
					}
			    }, 'json');
            }
        });
	});
	</script>
	</jscript>
</body>
</html>
