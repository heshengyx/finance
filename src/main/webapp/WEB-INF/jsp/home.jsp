<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
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
	            <span class="container-name">宫本宝藏</span>
	          </div>
	          <div class="col-sm-3 container-alarm">
	            <img src="${ctx}/images/alarm.png" />
	          </div>
	        </div>
	      </div>
	    </div>
	    <div class="row-height"></div>
	    <div class="row">
	      <div class="col-md-2 col-md-offset-2">
	        <span>安全等级</span>
	      </div>
	      <div class="col-md-2">
	        <div class="progress">
  <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
    <span class="sr-only">60% Complete (warning)</span>
  </div>
</div>
	      </div>
	    </div>
	    <br>
	    <br>
	    <br>
	  </div>
	</div>
</body>
</html>
