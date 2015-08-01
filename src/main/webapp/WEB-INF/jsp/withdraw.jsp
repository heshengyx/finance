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
	  <h4>提现</h4>
	  <form class="form-horizontal" id="dataForm" action="${ctx}/home/account/deposit" method="post">
	    <input type="hidden" name="type" value="1">
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-10">
	        <div id="message" class="btn-danger"></div>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label"><span class="text-danger">*</span>&nbsp;选择银行卡</label>
	      <div class="col-sm-10">
	        <button type="button" class="btn btn-default btn-lg">
			  <span class="glyphicon glyphicon-plus-sign text-info" aria-hidden="true"></span>&nbsp;&nbsp;<span class="text-info">添加银行卡</span>&nbsp;&nbsp;
			</button>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">可用金额</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label for="inputAmount" class="col-sm-2 control-label"><span class="text-danger">*</span>&nbsp;提现金额</label>
	      <div class="col-sm-3">
            <div class="input-group">
	          <input type="text" class="form-control" id="inputAmount" name="amount" placeholder="0.00">
	          <div class="input-group-addon">元</div>
	        </div>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">提现费用</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>提现费用将从您的人人贷账户余额中扣除</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">实际扣除金额</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">预计到账日期</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>2015-08-04</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>1-2个工作日（双休日和法定节假日除外）之内到账</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label for="inputAmount" class="col-sm-2 control-label"><span class="text-danger">*</span>&nbsp;交易密码</label>
	      <div class="col-sm-3">
            <input type="text" class="form-control" id="inputAmount" name="amount">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-3">
	        <button type="submit" class="btn btn-primary btn-block">提现</button>
	      </div>
	    </div>
	  </form>
	  
	  <div class="alert alert-warning" role="alert">
		<h4><span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>&nbsp;温馨提示</h4>
	    <ol>
		  <li>请确保您输入的提现金额，以及银行账号信息准确无误。</li>
		  <li>如果您填写的提现信息不正确可能会导致提现失败，由此产生的提现费用将不予返还。</li>
		  <li>在双休日和法定节假日期间，用户可以申请提现，人人贷会在下一个工作日进行处理。由此造成的不便，请多多谅解！</li>
		  <li>平台禁止洗钱、信用卡套现、虚假交易等行为，一经发现并确认，将终止该账户的使用。</li>
		</ol>
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
