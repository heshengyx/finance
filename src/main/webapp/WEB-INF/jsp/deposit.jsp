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
	  <h4>充值</h4>
	  <form class="form-horizontal" id="dataForm" action="${ctx}/home/account/deposit" method="post">
	    <input type="hidden" name="accountId" value="h78fc614ce459cc168000">
	    <input type="hidden" name="type" value="1">
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-10">
	        <div id="message" class="btn-danger"></div>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label"><span class="text-danger">*</span>&nbsp;充值方式</label>
	      <div class="col-sm-10">
	        <ul class="nav nav-tabs" id="navTab">
			  <li role="presentation" class="active"><a href="#cyber" data-toggle="tab">网银充值</a></li>
			  <li role="presentation"><a href="#canal" data-toggle="tab">渠道充值</a></li>
			</ul>
			<div class="tab-content">
	  		  <div role="tabpanel" class="container-panel-content container-tabs-content tab-pane active" id="cyber">
	  		    <div class="row">
	  		      <div class="col-md-3"><img src="${ctx}/images/code_102.jpg" class="img-rounded img-bank" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_308.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_105.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-3"><img src="${ctx}/images/code_309.jpg" class="img-rounded img-bank center-block" /></div>
	  		    </div>
	  		    <br>
	  		    <div class="row">
	  		      <div class="col-md-3"><img src="${ctx}/images/code_103.jpg" class="img-rounded img-bank" /></div>
	  		    </div>
	  		    <br>
	  		    <table class="table table-bordered">
			      <thead>
			        <tr class="info">
			          <th class="text-center">卡种</th>
			          <th class="text-center">单笔限额(元)</th>
			          <th class="text-center">每日限额(元)</th>
			          <th class="text-center">必要条件</th>
			        </tr>
			      </thead>
			      <tbody>
			        <tr class="active text-center">
			          <td rowspan="2">储蓄卡</td>
			          <td>1000万</td>
			          <td>无限额</td>
			          <td>工行网银U盾用户</td>
			        </tr>
			        <tr class="active text-center">
			          <td>200</td>
			          <td>500</td>
			          <td>电子银行口令卡及手机短信认证</td>
			        </tr>
			      </tbody>
			    </table>
	  		  </div>
	  		  <div role="tabpanel" class="container-panel-content container-tabs-content tab-pane" id="canal">
	  		    <div class="row">
	  		      <div class="col-md-4"><img src="${ctx}/images/checkin_kq.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-4"><img src="${ctx}/images/tenpay.jpg" class="img-rounded img-bank center-block" /></div>
	  		      <div class="col-md-4"><img src="${ctx}/images/yeepay.jpg" class="img-rounded img-bank center-block" /></div>
	  		    </div>
	  		    <br>
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
	      <label for="inputAmount" class="col-sm-2 control-label"><span class="text-danger">*</span>&nbsp;充值金额</label>
	      <div class="col-sm-3">
            <div class="input-group">
	          <input type="text" class="form-control" id="inputAmount" name="amount" placeholder="0.00">
	          <div class="input-group-addon">元</div>
	        </div>
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
