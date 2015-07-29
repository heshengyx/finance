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
  	  padding-bottom: 20px;
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
	  <h4>充值</h4>
	  <form class="form-horizontal">
	    <div class="form-group">
	      <label class="col-sm-2 control-label">充值方式</label>
	      <div class="col-sm-10">
	        <ul class="nav nav-tabs" id="navTab">
			  <li role="presentation" class="active"><a href="#detail" data-toggle="tab">网银充值</a></li>
			  <li role="presentation"><a href="#record" data-toggle="tab">渠道充值</a></li>
			</ul>
			<div class="tab-content">
	  		  <div role="tabpanel" class="container-panel-content container-tabs-content tab-pane active" id="detail">
	  		    <div class="row">
	  		      <div class="col-md-3"><img src="${ctx}/images/code_102.jpg" class="img-rounded img-bank" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_308.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_105.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_309.jpg" class="img-rounded img-bank center-block" /></div>
	  		    </div>
	  		  </div>
	  		</div>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">账户余额</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label for="inputMenoy" class="col-sm-2 control-label">充值金额</label>
	      <div class="col-sm-2">
	        <input type="text" class="form-control" id="inputMenoy">
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">充值费用</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">实际金额</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span>￥0.00元</span></p>
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-3">
	        <button type="submit" class="btn btn-primary btn-block">充值</button>
	      </div>
	    </div>
	  </form>
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
	});
	</script>
	</jscript>
</body>
</html>
