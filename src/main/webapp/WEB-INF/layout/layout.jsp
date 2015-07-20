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
    .container-navbar {
      height: 70px;
      background-color: #ffffff;
    }
    .navbar-default {
      background-color: #ffffff;
    }
    .navbar-header {
      margin-top: 10px;
    }
    .navbar-brand {
      padding: 0px;
    }
    /* Special class on .container surrounding .navbar, used for positioning it into place. */
	.navbar-wrapper {
	  position: absolute;
	  top: 0;
	  right: 0;
	  left: 0;
	  z-index: 50;
	}
	/* Flip around the padding for proper display in narrow viewports */
	.navbar-wrapper > .container {
	  /* padding-right: 0; */
	  padding-left: 0;
	}
	@media (min-width: 970px) {
	  .navbar-wrapper > .container {
	    width: 940px;
	  }
	}
    </style>
    <sitemesh:write property="head" />
  </head>

  <body>
  
    <div class="container-navbar">
	<div class="navbar-wrapper">
	<div class="container">
	<nav class="navbar-default">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="${ctx}/index">
	        <img alt="Brand" src="${ctx}/images/logo.png">
	      </a>
	    </div>
	    <h2 class="navbar-text navbar-right hidden-xs"><sitemesh:write property="navTitle" /></h2>
	  </div>
	</nav>
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
    <script src="${ctx}/js/bootstrapValidator.min.js"></script>
    <sitemesh:write property="jscript" />
  </body>
</html>