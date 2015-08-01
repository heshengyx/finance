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
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel-content">
	  <h4>交易记录</h4>
	  <form class="form-inline">
	  <div class="form-group">
	    <label class="control-label" for="inputType">查询类型</label>
	    <select class="form-control" id="inputType">
	      <option>全部</option>
		  <option>充值</option>
		  <option>提现</option>
		</select>
		&nbsp;&nbsp;
	  </div>
	  <div class="form-group">
	    <label class="control-label" for="inputDate">查询时间</label>
	    <input type="text" class="form-control" id="inputDate">
	    &nbsp;&nbsp;
	  </div>
	  <button type="submit" class="btn btn-primary btn-sm">查询</button>
	  </form>
      <table class="table">
      <caption>交易列表</caption>
      <thead>
        <tr class="info">
          <th>时间</th>
          <th>类型明细</th>
          <th>收入</th>
          <th>支出</th>
          <th>结余</th>
          <th>备注</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>债权投资</td>
          <td>0.00元</td>
          <td>0.00元</td>
          <td>0.0%</td>
          <td>0.0%</td>
          <td>查看</td>
        </tr>
      </tbody>
      </table>
	</div>
	<jscript>
	<script src="${ctx}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js"></script>
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
