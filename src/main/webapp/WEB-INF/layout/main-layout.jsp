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
    .navbar {
      margin-bottom: 0px;
    }
    .navbar-inverse {
      height: 35px;
      background-color: #555555;
      color: #BCBCBC;
    }
    .col-md-3 a {
      margin-top: 8px;
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
    <sitemesh:write property="head" />
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
    <nav class="navbar navbar-default navbar-static-top">
      <div class="navbar-inverse">
        <div class="container">
          <div class="container-header">
          <div class="row">
            <div class="col-md-8"><h5>客服电话：400-0093-666&nbsp;&nbsp;工作时间：9:00-17:00</h5></div>
            <div class="col-md-4">
              <div class="col-md-4"><a class="btn btn-link" href="${ctx}/register" role="button">快速注册</a></div>
              <div class="col-md-4"><a class="btn btn-link" href="${ctx}/login" role="button">立即登录</a></div>
              <div class="col-md-4"><a class="btn btn-link" href="#" role="button">帮助中心</a></div>
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
      		  <div class="col-md-3"><a class="btn btn-primary btn-lg" href="${ctx}/register" role="button">首页</a></div>
              <div class="col-md-3"><a class="btn btn-link btn-lg" href="${ctx}/register" role="button">我要投资</a></div>
              <div class="col-md-3"><a class="btn btn-link btn-lg" href="${ctx}/register" role="button">我要理财</a></div>
              <div class="col-md-3"><a class="btn btn-link btn-lg" href="${ctx}/register" role="button">我的账户</a></div>
      		</div>
      	</div>
      	</div>
      </div>
    </nav>

    <sitemesh:write property="body" />

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    -->
    <!-- js -->
    <script src="${ctx}/js/jquery.min.js" ></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/bootstrapValidator.min.js"></script>
  </body>
</html>