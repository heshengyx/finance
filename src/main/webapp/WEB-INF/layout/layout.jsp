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
	  padding-top: 50px;	
	}
    </style>
    <!-- js -->
    <script src="${ctx}/js/jquery.min.js" ></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/bootstrapValidator.min.js"></script>
    <sitemesh:write property="head" />
  </head>

  <body>

    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
      	<div class="container-header">
      	<div class="row">
      		<div class="col-md-8"><h4><img src="${ctx}/images/logo.png" /></h4></div>
      		<div class="col-md-4 text-right"><h3><sitemesh:write property="navTitle" /></h3></div>
      	</div>
      	</div>
      </div>
    </nav>

    <div class="container">
      <sitemesh:write property="body" />
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
     -->
  </body>
</html>