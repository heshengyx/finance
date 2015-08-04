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
	.thumbnail {
	  cursor: pointer;
	}
	.thumbnail hr {
	  margin: 0;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel-content">
	  <h4>银行卡信息</h4>
	  <br>
	  <div class="row">
	    <div class="col-sm-6 col-md-4 text-center">
	      <div class="thumbnail">
	        <h3><span class="glyphicon glyphicon-plus"></span></h3>
	        <hr>
	        <div class="caption">
	        <span><a href="#" data-toggle="modal" data-target="#myModal">新增银行卡</a></span>
	        </div>
	      </div>
	    </div>
	  </div>
	</div>
	
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-2" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">添加银行卡</h4>
	      </div>
	      <div class="modal-body">
	        <form class="form-horizontal" id="dataForm" action="${ctx}/home/capital/deposit/refer" method="post">
	          <div class="form-group">
		        <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;开户人姓名</label>
		        <div class="col-sm-5">
		          <input type="text" class="form-control" id="inputAccountName" name="accountName">
		        </div>
		      </div>
		      <div class="form-group">
		        <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;银行卡号</label>
		        <div class="col-sm-5">
		          <input type="text" class="form-control" id="inputAccountName" name="accountName">
		        </div>
		      </div>
		      <div class="form-group">
		        <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;选择银行</label>
		        <div class="col-sm-5">
		          <div class="btn-group">
			      <button type="button" class="btn btn-default"><div class="text-left">请选择银行</div></button>
			      <div class="input-group-btn">
			        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="caret"></span></button>
			        <ul class="dropdown-menu dropdown-menu-right">
			          <li><a href="#">Action</a></li>
			          <li><a href="#">Another action</a></li>
			          <li><a href="#">Something else here</a></li>
			          <li role="separator" class="divider"></li>
			          <li><a href="#">Separated link</a></li>
			        </ul>
			      </div><!-- /btn-group -->
			      </div><!-- /input-group -->
		        </div>
		      </div>
		      <div class="form-group">
		        <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;开户行所在地</label>
		        <div class="col-sm-5">
		          <input type="text" class="form-control" id="inputAccountName" name="accountName">
		        </div>
		      </div>
		      <div class="form-group">
		        <label class="col-sm-3 control-label"><span class="text-danger">*</span>&nbsp;开户行名</label>
		        <div class="col-sm-5">
		          <input type="text" class="form-control" id="inputAccountName" name="accountName">
		        </div>
		      </div>
	        </form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
	        <button type="button" class="btn btn-primary">保存</button>
	      </div>
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
