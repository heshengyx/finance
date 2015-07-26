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
    <link href="${ctx}/css/style.css" rel="stylesheet">
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
	      <p><h5>客服电话：400-0093-666&nbsp;&nbsp;工作时间：9:00-17:00</h5></p>
	    </div>
	    <div class="collapse navbar-collapse" id="bs-navbar-collapse-top">
	    <ul class="nav navbar-nav navbar-right navbar-nav-top">
	      <shiro:notAuthenticated>
	      <li><h5><a href="${ctx}/register">快速注册</a></h5></li>
	      <li><h5><a href="${ctx}/login">立即登录</a></h5></li>
	      </shiro:notAuthenticated>
	      <shiro:authenticated>
	      <li><h5><shiro:principal property="username" /></h5></li>
	      <li><h5><a href="${ctx}/logout">[退出]</a></h5></li>
	      </shiro:authenticated>
	      <li><a href="#"><h5>帮助中心</h5></a></li>
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
                <!-- <li class="dropdown">
                  <a href="#" class="dropdown-toggle btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">关于我们 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Action</a></li>
                    <li><a href="#">Another action</a></li>
                    <li><a href="#">Something else here</a></li>
                    <li role="separator" class="divider"></li>
                    <li class="dropdown-header">Nav header</li>
                    <li><a href="#">Separated link</a></li>
                    <li><a href="#">One more separated link</a></li>
                  </ul>
                </li> -->
              </ul>
	    </div>
	  </div>
	</nav>
	
	<!-- <div class="clearfix"></div> -->	
	</div>
	</div>
	</div>

    <sitemesh:write property="body" />
	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    -->
    <!-- js -->
    <script src="${ctx}/js/jquery.min.js" ></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <sitemesh:write property="jscript" />
  </body>
</html>