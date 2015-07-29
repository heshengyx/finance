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
	.container-panel-heading {
	  height: 39px;
	  background-color: #2DA7E0;
	}
	.container-panel-body {
	  border-left: 1px solid #dddddd;
	  border-right: 1px solid #dddddd;
	  border-bottom: 1px solid #dddddd;
  	  background-color: #FFFFFF;
	}
	.container-panel-content {
	  border: 1px solid #dddddd;
  	  background-color: #FFFFFF;
  	  padding-left: 20px;
  	  padding-right: 20px;
	}
	.container-user {
	  position: absolute;
	  top: 0px;
	  width: 96px;
	  height: 96px;
	  margin: 20px;
	}
	.container-name {
	  font-size: 25px;
	}
	.container-alarm {
	  padding: 0;
	}
	.container-alarm > img {
	  margin-top: 10px;
	}
	.col-md-top {
	  padding-top: 8px;
	}
	.col-md-glyphicon {
	  font-size: 25px;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel">
	  <div class="container-panel-heading"></div>
	  <div class="container-user">
	    <a href="#" class="thumbnail">
	      <img src="${ctx}/images/avatar.png" />
	    </a>
	  </div>
	  <div class="container-panel-body">
	    <div class="row">
	      <div class="col-md-3 col-md-offset-2">
	        <div class="row">
	          <div class="col-sm-8">
	            <span class="container-name"><shiro:principal property="username" /></span>
	          </div>
	          <div class="col-sm-3 container-alarm">
	            <img src="${ctx}/images/alarm.png" />
	          </div>
	        </div>
	      </div>
	    </div>
	    <div class="row-height"></div>
	    <div class="row">
	      <div class="col-md-4 col-md-offset-2">
	        <div class="row">
	          <div class="col-sm-4"><div class="col-md-top">安全等级</div></div>
	          <div class="col-sm-8">
	            <div class="col-md-top">
	        <div class="progress">
  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
    <span class="sr-only">60% Complete (warning)</span>
  </div>
   				</div>
	          </div>
	          </div>         
	        </div>
	      </div>
	      <div class="col-md-3"><div class="col-md-top">账户余额&nbsp;0.00元</div></div>
	      <div class="col-md-3">
	        <a class="btn btn-success" href="#" role="button">充值</a>&nbsp;&nbsp;
	        <a class="btn btn-info" href="#" role="button">提现</a>
	      </div>
	    </div>
	    <div class="row">
	      <div class="col-md-4 col-md-offset-2">
	        <a href="#"><span class="glyphicon glyphicon-phone col-md-glyphicon"></span></a>&nbsp;&nbsp;
	        <a href="#" id="glyphicon-user" data-toggle="tooltip" data-placement="bottom"><span class="glyphicon glyphicon-user col-md-glyphicon"></span></a>&nbsp;&nbsp;
	        <a href="#"><span class="glyphicon glyphicon-usd col-md-glyphicon"></span></a>&nbsp;&nbsp;
	        <a href="#"><span class="glyphicon glyphicon-envelope col-md-glyphicon"></span></a>
	      </div>
	      <div class="col-md-2">冻结金额&nbsp;0.00元</div>
	      <div class="col-md-2">可用金额&nbsp;0.00元</div>
	    </div>
	    <div class="row-height"></div>
	  </div>
	</div>
	<br>
	<div class="container-panel-content">
	  <br>
	  <div class="row">
	    <div class="col-md-3 text-center"><h4>账户净资产</h4></div>
	    <div class="col-md-1 text-center"></div>
	    <div class="col-md-2 text-center"><h4>理财资产</h4></div>
	    <div class="col-md-1 text-center"></div>
	    <div class="col-md-2 text-center"><h4>借款负债</h4></div>
	    <div class="col-md-1 text-center"></div>
	    <div class="col-md-2 text-center"><h4>账户余额</h4></div>
	  </div>
	  <div class="row">
	    <div class="col-md-3 text-center"><h5><span class="col-md-glyphicon">0.00</span>元</h5></div>
	    <div class="col-md-1 text-center col-md-glyphicon">=</div>
	    <div class="col-md-2 text-center"><h5><span class="col-md-glyphicon">0.00</span>元</h5></div>
	    <div class="col-md-1 text-center col-md-glyphicon">+</div>
	    <div class="col-md-2 text-center"><h5><span class="col-md-glyphicon">0.00</span>元</h5></div>
	    <div class="col-md-1 text-center col-md-glyphicon">+</div>
	    <div class="col-md-2 text-center"><h5><span class="col-md-glyphicon">0.00</span>元</h5></div>
	  </div>
	  <hr>
	  <table class="table">
      <caption>理财账户</caption>
      <thead>
        <tr class="info">
          <th>理财方式</th>
          <th>账户资产</th>
          <th>已赚金额</th>
          <th>加权平均收益率</th>
          <th>持有数量</th>
          <th></th>
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
      <table class="table">
      <caption>借款账户</caption>
      <thead>
        <tr class="info">
          <th>理财方式</th>
          <th>账户资产</th>
          <th>已赚金额</th>
          <th>加权平均收益率</th>
          <th>持有数量</th>
          <th></th>
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
	<br>
	<div class="container-panel-content">
	  <h3>理财推荐</h3>
	  <table class="table">
      <tbody>
        <tr>
          <td><h4>U计划-A150727期</h4>加入条件1,000元</td>
          <td><div>计划金额6,000,000元</div>预期收益6%/年</td>
          <td><div>剩余金额1,137,000元</div>加入进度81%</td>
          <td><a class="btn btn-info" href="#" role="button">开发加入</a></td>
        </tr>
        <tr>
          <td><h4>U计划-B150727期</h4>加入条件1,000元</td>
          <td><div>计划金额6,000,000元</div>预期收益6%/年</td>
          <td><div>剩余金额1,137,000元</div>加入进度81%</td>
          <td><a class="btn btn-info" href="#" role="button">开发加入</a></td>
        </tr>
      </tbody>
      </table>
	</div>
	<jscript>
	<script>
	$(document).ready(function() {
		var options = {
		    delay: { show: 500, hide: 100 },
		    title: '进行实名认证后，您才可以进行投资、借款。',
		    trigger:'click',
		};
	  	$('#glyphicon-user').tooltip(options);
	  	$('#glyphicon-user').tooltip('show');
	  //$('[data-toggle="tooltip"]').tooltip();
	});
	</script>
	</jscript>
</body>
</html>
