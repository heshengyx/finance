<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-投资详情</title>
	<link href="${ctx}/css/carousel.css" rel="stylesheet">
	<style type="text/css">
	.container-nav ol {
	  background-color: #F2F2F2;
	}
	.col-divider {
	  border-right: 1px solid #F2F2F2;
	}
	.container-content > .row {
	  margin-top: 10px;
	  margin-bottom: 10px;
	}
	.row-height {
	  height: 5px;
	}
	.dataTables_wrapper .dataTables_length {
	  padding-top: 0.755em;
	}
	.row-header {
	  border-bottom: 1px solid #F2F2F2;
	}
	.row-header > .col-md-4 {
	  padding-top: 10px;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
	
	<div class="container">
	  <div class="container-nav">
	    <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">我要投资</a></li>
		  <li><a href="#">投资项目</a></li>
		  <li class="active">借款详情</li>
		</ol>
	  </div>
	  <div class="container container-content">
	    <div class="row row-header">
	      <div class="col-md-8">
	        <h4>日常生活消费</h4>
	      </div>
	      <div class="col-md-4 text-right">借款协议（范本）</div>
	    </div>
	    <div class="row">
	      <div class="col-md-8">
	        <h4>日常生活消费</h4>
	      </div>
	      <div class="col-md-4">
	        <div class="highlight">
			  <div class="panel panel-info">
			    <div class="panel-heading">
		     	  <h3 class="panel-title">剩余金额（元）</h3>
		  	  	</div>
			    <div class="panel-body">
			      <h3>￥28,200（564份）</h3>
			      <p>账户余额</p>
			      <a class="btn btn-primary btn-lg btn-block" href="${ctx}/register" role="button">投标</a>
			    </div>
			  </div>
			</div>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>
