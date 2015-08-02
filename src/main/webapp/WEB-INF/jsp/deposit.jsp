<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	.alert-message {
	  margin: 0;
	}
	a.img-link {
	  position: absolute;
	  width: 120px;
	  height: 34px;
	  left: 15px;
	  top: 0;
	  z-index: 1;
	}
	a.img-active img {
	  border: 1px solid #2EA7E1;
	}
	a.img-active i.ct {
	  position: absolute;
	  width: 100%;
	  height: 100%;
	  left: 0;
	  top: 0;
	  background: url(/images/hover.png);
	  z-index: 2;
	  display: block;
	}
	a.img-active i.rt {
	  position: absolute;
	  width: 20px;
	  height: 20px;
	  right: 0;
	  top: 0;
	  background: url(/images/selected.png) no-repeat;
	  z-index: 3;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel-content">
	  <h4>充值</h4>
	  <form class="form-horizontal" id="dataForm" action="${ctx}/home/capital/deposit/refer" method="post">
	    <input type="hidden" name="token" value="${token}" />
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-10">
	        <div class="alert alert-warning alert-dismissible alert-message" role="alert" id="alert-message">
			  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			  <span id="message"></span>
			</div>
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
	  		      <div class="col-md-3">
	  		        <a href="javascript:void(0);" class="img-link img-active" data-value="ICBC">
	  		          <img src="${ctx}/images/code_102.jpg" class="img-rounded img-bank center-block" />
	  		          <i class="ct"></i>
	  		          <i class="rt"></i>
	  		        </a>
	  		      </div>
	  		      <div class="col-md-3">
	  		        <a href="javascript:void(0);" class="img-link" data-value="ABC">
	  		          <img src="${ctx}/images/code_308.jpg" class="img-rounded img-bank center-block" />
	  		          <i class="ct"></i>
	  		          <i class="rt"></i>
	  		        </a>
	  		      </div>
	  		      <div class="col-md-3">
	  		        <a href="javascript:void(0);" class="img-link">
	  		          <img src="${ctx}/images/code_105.jpg" class="img-rounded img-bank center-block" />
	  		          <i class="ct"></i>
	  		          <i class="rt"></i>
	  		        </a>
	  		      </div>
	  		      
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
	  		      <div class="col-md-4">
	  		        <a href="javascript:void(0);" class="img-link img-active" data-value="ICBC">
	  		          <img src="${ctx}/images/checkin_kq.jpg" class="img-rounded img-bank center-block" />
	  		          <i class="ct"></i>
	  		          <i class="rt"></i>
	  		        </a>	        
	  		      </div>
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
	        <p class="form-control-static"><span class="text-danger">￥<fmt:formatNumber value="${account.balance/100}" type="currency" pattern="#,#00.00#"/></span>元</p>
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
	        <p class="form-control-static"><span class="text-danger">￥0.00</span>元</p>
	      </div>
	    </div>
	    <div class="form-group">
	      <label class="col-sm-2 control-label">实际金额</label>
	      <div class="col-sm-10">
	        <p class="form-control-static"><span class="text-danger">￥0.00</span>元</p>
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-sm-offset-2 col-sm-3">
	        <button type="submit" class="btn btn-primary btn-block">充值</button>
	      </div>
	    </div>
	  </form>
	  
	  <div class="alert alert-warning" role="alert">
		<h4><span class="glyphicon glyphicon-volume-up" aria-hidden="true"></span>&nbsp;温馨提示</h4>
	    <ol>
		  <li>为了您的账户安全，请在充值前进行身份认证、手机绑定以及交易密码设置。</li>
		  <li>您的账户资金将通过第三方平台进行充值。</li>
		  <li>请注意您的银行卡充值限制，以免造成不便。</li>
		  <li>禁止洗钱、信用卡套现、虚假交易等行为，一经发现并确认，将终止该账户的使用。</li>
		  <li>如果充值金额没有及时到账，请联系客服，400-090-6600。</li>
		</ol>
	  </div>
	</div>
	<jscript>
	<script src="${ctx}/js/bootstrap-datetimepicker.min.js"></script>
	<script>
	$(document).ready(function() {
		$('#alert-message').hide();
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
						$('#alert-message').show();
						validator.disableSubmitButtons(false);
					}
			    }, 'json');
            }
        });
		$("#cyber .img-link").each(function(index) {
			var select = $(this);
			//select.css('cursor', 'pointer');
			//select.css('display', 'block');
			//alert(index);
			select.click(function() {
				$("#cyber .img-link").each(function(index) {
					$(this).removeClass('img-active');
				});
				select.addClass('img-active');
				//alert(select.attr('data-value'));
			});
		});
	});
	</script>
	</jscript>
</body>
</html>
