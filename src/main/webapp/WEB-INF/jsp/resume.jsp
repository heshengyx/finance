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
	  <h4>个人信息</h4>
	  <div class="row">
	    <div class="col-md-2">
	      <a href="#" class="thumbnail">
	        <img src="${ctx}/images/avatar.png" />
	      </a>
	    </div>
	    <div class="col-md-8 col-md-offset-2">
	      <form class="form-horizontal" id="dataForm" action="${ctx}/home/account/deposit" method="post">
	        <div class="form-group">
		      <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;昵称</label>
		      <div class="col-sm-9">
		        <p class="form-control-static">宫本宝藏</p>
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;真实姓名</label>
		      <div class="col-sm-6">
		        <p class="form-control-static"></p>
		      </div>
		      <div class="col-sm-3">
		        <p class="form-control-static">去认证</p>
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;身份证号</label>
		      <div class="col-sm-6">
		        <p class="form-control-static"></p>
		      </div>
		      <div class="col-sm-3">
		        <p class="form-control-static">去认证</p>
		      </div>
		    </div>
		    <div class="form-group">
		      <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;手机号码</label>
		      <div class="col-sm-6">
		        <p class="form-control-static">132 **** 5714</p>
		      </div>
		      <div class="col-sm-3">
		        <p class="form-control-static">去认证</p>
		      </div>
		    </div>
	      </form>
	    </div>
	  </div>
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
