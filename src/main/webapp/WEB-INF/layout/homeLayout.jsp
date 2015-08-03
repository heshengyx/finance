<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
    <link href="${ctx}/css/home.css" rel="stylesheet">
    <style type="text/css">
    .container-inverse {
      height: 35px;
      background-color: #222222;
      color: #BCBCBC;
    }
    .container-navbar {
      height: 70px;
      background-color: #ffffff;
    }
    .navbar-default {
      background-color: #ffffff;
    }
    .navbar-brand {
      padding: 0px;
    }
    .navbar-nav-top {
	  margin: 0px -15px;
	}
	.navbar-nav-top > li {
	  padding-top: 5px;
	}
	.navbar-nav-top > li > a {
	  padding-top: 0px;
	  padding-bottom: 0px;
	  line-height: 20px;
	}
	/* Special class on .container surrounding .navbar, used for positioning it into place. */
	.navbar-wrapper {
	  position: absolute;
	  top: 25px;
	  right: 0;
	  left: 0;
	  z-index: 50;
	}
	/* Flip around the padding for proper display in narrow viewports */
	.navbar-wrapper > .container {
	  padding-right: 0;
	  padding-left: 0;
	}
	.navbar-wrapper {
	  margin-top: 20px;
	}
	.collapse-nav {
	  border: 0px solid red;
	}
	.collapse-nav-title {
	  height: 40px;
	  line-height: 40px;
	  padding-left: 20px;
	  display: block;
	  cursor: pointer;
	  background-color: #ECECEC;
	  border-bottom: 1px solid #FFFFFF;
	}
	.collapse-nav-selected {
	  height: 40px;
	  line-height: 40px;
	  padding-left: 20px;
	  display: block;
	  background-color: #2DA7E0;
	  border-bottom: 1px solid #FFFFFF;
	}
	.collapse-nav-content {
	  height: 40px;
	  line-height: 40px;
	  padding-left: 38px;
	}
	@media (min-width: 970px) {
	  .navbar-wrapper > .container {
	    width: 940px;
	  }
	  .container-inverse > .container {
	    width: 940px;
	  }
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

    <div class="container-inverse">
    <div class="container">
    <nav class="navbar-inverse">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse-top" aria-expanded="false">
	      </button>
	      <h5>客服电话：400-0093-666&nbsp;&nbsp;工作时间：9:00-17:00</h5>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-navbar-collapse-top">
	    <ul class="nav navbar-nav navbar-right navbar-nav-top">
	      <shiro:notAuthenticated>
	      <li><a class="btn btn-link" href="${ctx}/register" role="button">快速注册</a></li>
	      <li><a class="btn btn-link" href="${ctx}/login" role="button">立即登录</a></li>
	      </shiro:notAuthenticated>
	      <shiro:authenticated>
	      <li><a class="btn btn-link" href="#" role="button"><shiro:principal property="username" /></a></li>
	      <li><a class="btn btn-link" href="${ctx}/logout" role="button">[退出]</a></li>
	      </shiro:authenticated>
	      <li><a class="btn btn-link" href="#" role="button">帮助中心</a></li>
	    </ul>
	    </div>
	</nav>
	</div>
	</div>

	<div class="container-navbar">
	<div class="navbar-wrapper">
	<div class="container">
	<nav class="navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar-collapse" aria-expanded="false">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="${ctx}/index">
	        <img alt="Brand" src="${ctx}/images/logo.png">
	      </a>
	    </div>
	    
	    <div class="collapse navbar-collapse" id="bs-navbar-collapse">
	      <ul class="nav navbar-nav navbar-right">
                <li><a class="btn btn-link btn-lg" href="${ctx}/register" role="button">首页</a></li>
                <li><a class="btn btn-link btn-lg" href="${ctx}/lend" role="button">我要投资</a></li>
                <li><a class="btn btn-link btn-lg" href="${ctx}/borrow" role="button">我要理财</a></li>
                <li><a class="btn btn-link btn-lg" href="#" role="button">新手指引</a></li>
              </ul>
	    </div>
	  </div>
	</nav>
	
	<!-- <div class="clearfix"></div> -->	
	</div>
	</div>
	</div>

	<div class="container">
	  <div class="container-nav">
	    <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">我要投资</a></li>
		  <li class="active">投资项目</li>
		</ol>
	  </div>
	  <div class="container-content">
	    <div class="row container-row" style="margin-top:0;">
	      <div class="col-md-2">
	        <div class="collapse-nav">
	          <div class="collapse-nav-selected">
	            <span class="glyphicon glyphicon-user"></span>&nbsp;我的账户
	          </div>
	          <div class="collapse-nav-title" data-toggle="collapse" data-target="#nav2">
	            <span class="glyphicon glyphicon-usd"></span>&nbsp;资金管理
	          </div>
	          <div class="collapse-nav-tag" id="nav2">
	          	<div class="collapse-nav-content"><a href="${ctx}/home/capital/trade">交易记录</a></div>
	          	<div class="collapse-nav-content"><a href="${ctx}/home/capital/deposit">充值</a></div>
	          	<div class="collapse-nav-content"><a href="${ctx}/home/capital/withdraw">提现</a></div>
	          </div>
	          <div class="collapse-nav-title" data-toggle="collapse" data-target="#nav3">
	            <span class="glyphicon glyphicon-list-alt"></span>&nbsp;理财管理
	          </div>
	          <div class="collapse-nav-tag" id="nav3">
	          	<div class="collapse-nav-content">交易记录</div>
	          	<div class="collapse-nav-content">充值</div>
	          	<div class="collapse-nav-content">提现</div>
	          </div>
	          <div class="collapse-nav-title" data-toggle="collapse" data-target="#nav4">
	            <span class="glyphicon glyphicon-calendar"></span>&nbsp;借款管理
	          </div>
	          <div class="collapse-nav-tag" id="nav4">
	          	<div class="collapse-nav-content">交易记录</div>
	          	<div class="collapse-nav-content">充值</div>
	          	<div class="collapse-nav-content">提现</div>
	          </div>
	          <div class="collapse-nav-title" data-toggle="collapse" data-target="#nav5">
	            <span class="glyphicon glyphicon-calendar"></span>&nbsp;账户管理
	          </div>
	          <div class="collapse-nav-tag" id="nav5">
	          	<div class="collapse-nav-content"><a href="${ctx}/home/account/resume">个人信息</a></div>
	          	<div class="collapse-nav-content">认证信息</div>
	          	<div class="collapse-nav-content"><a href="${ctx}/home/account/security">安全信息</a></div>
	          	<div class="collapse-nav-content"><a href="${ctx}/home/account/bankcard">银行卡信息</a></div>
	          </div>
	        </div>
	      </div>
	      <div class="col-md-10">
	        <sitemesh:write property="body" />
	      </div>
	    </div>
	  </div>
	</div>
    
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    -->
    <!-- js -->
    <script src="${ctx}/js/jquery.min.js" ></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/bootstrapValidator.min.js"></script>
    <sitemesh:write property="jscript" />
  </body>
</html>