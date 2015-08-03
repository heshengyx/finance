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
	        <span><a href="#">新增银行卡</a></span>
	        </div>
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
