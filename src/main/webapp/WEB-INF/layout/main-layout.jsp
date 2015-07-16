<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>
<!DOCTYPE html>
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><sitemesh:write property="title" /></title>
    <!-- Bootstrap core CSS -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/css/bootstrapValidator.min.css" rel="stylesheet">
    <link href="${ctx}/css/style.css" rel="stylesheet">
    <style type="text/css">
    body {
	  padding-top: 0px;
	}
    .navbar-inverse {
      height: 35px;
      background-color: #555555;
      color: #BCBCBC;
    }
    .col-md-h {
      padding-right: 0px;
      text-align: right;
    }
    .col-md-h h4 {
      margin-top: 25px;
      font-weight: bold;
    }
    .col-md-h button {
      margin-top: 18px;
      font-weight: bold;
    }
    .marketing .col-md-4 {
	  margin-bottom: 20px;
	  text-align: center;
	}
	.marketing h2 {
	  font-weight: normal;
	}
	.marketing .col-md-4 p {
	  margin-right: 10px;
	  margin-left: 10px;
	}
    </style>
    <!-- js -->
    <script src="${ctx}/js/jquery.min.js" ></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/bootstrapValidator.min.js"></script>
    <sitemesh:write property="head" />
  </head>

  <body>
    <div class="navbar-wrapper">
    <nav class="navbar navbar-default navbar-static-top">
      <div class="navbar-inverse">
        <div class="container">
          <div class="container-header">
          <div class="row">
            <div class="col-md-8"><h5>客服电话：400-0093-666&nbsp;&nbsp;工作时间：9:00-17:00</h5></div>
            <div class="col-md-4">
              <div class="col-md-4 col-md-h"><h5><a href="${ctx}/register">快速注册</a></h5></div>
              <div class="col-md-4 col-md-h"><h5><a href="${ctx}/login">立即登录</a></h5></div>
              <div class="col-md-4 col-md-h"><h5>帮助中心</h5></div>
            </div>
          </div>
          </div>
        </div>
      </div>
      <div class="container">
      	<div class="container-header">
      	<div class="row">
      		<div class="col-md-6"><h4><img src="${ctx}/images/logo.png" /></h4></div>
      		<div class="col-md-6">
      		  <div class="col-md-3 col-md-h"><button type="button" class="btn btn-primary">首页</button></div>
              <div class="col-md-3 col-md-h"><button type="button" class="btn">我要投资</button></div>
              <div class="col-md-3 col-md-h"><button type="button" class="btn">我要理财</button></div>
              <div class="col-md-3 col-md-h"><button type="button" class="btn">我要投资</button></div>
      		</div>
      	</div>
      	</div>
      </div>
    </nav>
    </div>

    <sitemesh:write property="body" />

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
     -->
  </body>
</html>