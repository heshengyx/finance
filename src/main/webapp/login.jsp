<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8">
	<title>社区网-用户登录</title>
	<meta name="description" content="Bootstrap Metro Dashboard">
	<meta name="author" content="Dennis Ji">
	<meta name="keyword" content="Metro, Metro UI, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link id="base-style" href="${ctx}/css/style.css" rel="stylesheet">
	<link id="base-style-responsive" href="${ctx}/css/style-responsive.css" rel="stylesheet">
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css'>
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="${ctx}/css/ie.css" rel="stylesheet">
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="${ctx}/css/ie9.css" rel="stylesheet">
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="${ctx}/img/favicon.ico">
	<!-- end: Favicon -->
	
			<style type="text/css">
			body { background: url(${ctx}/img/bg-login.jpg) !important; }
		</style>
		
		
		
</head>

<body>
		<div class="container-fluid-full">
		<div class="row-fluid">
					
			<div class="row-fluid">
				<div class="login-box">
					<div class="icons">
						<a href="index.html"><i class="halflings-icon home"></i></a>
						<a href="#"><i class="halflings-icon cog"></i></a>
					</div>
					<h2>用户登录</h2>
					<form class="form-horizontal" action="${ctx}/security/login" method="post">
						<fieldset>
							
							<div class="input-prepend" title="Username">
								<span class="add-on"><i class="halflings-icon user"></i></span>
								<input class="input-large span10" name="account" id="account" type="text" placeholder="输入账号"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="Password">
								<span class="add-on"><i class="halflings-icon lock"></i></span>
								<input class="input-large span10" name="password" id="password" type="password" placeholder="输入密码"/>
							</div>
							<div class="clearfix"></div>
							
							<label class="remember" for="remember"><input type="checkbox" id="remember" />记住我</label>

							<div class="button-login">	
								<button type="submit" class="btn btn-primary">登录</button>
							</div>
							<div class="clearfix"></div>
					</form>
					<hr>
					<h3>忘记密码?</h3>
					<p>
						<a href="#">点击这里</a> 获取新密码.
					</p>	
				</div><!--/span-->
			</div><!--/row-->
			

	</div><!--/.fluid-container-->
	
		</div><!--/fluid-row-->
	
	<!-- start: JavaScript-->

		<script src="${ctx}/js/jquery-1.9.1.min.js"></script>
	<script src="${ctx}/js/jquery-migrate-1.0.0.min.js"></script>
	
		<script src="${ctx}/js/jquery-ui-1.10.0.custom.min.js"></script>
	
		<script src="${ctx}/js/jquery.ui.touch-punch.js"></script>
	
		<script src="${ctx}/js/modernizr.js"></script>
	
		<script src="${ctx}/js/bootstrap.min.js"></script>
	
		<script src="${ctx}/js/jquery.cookie.js"></script>
	
		<script src='${ctx}/js/fullcalendar.min.js'></script>
	
		<script src='${ctx}/js/jquery.dataTables.min.js'></script>

		<script src="${ctx}/js/excanvas.js"></script>
	<script src="${ctx}/js/jquery.flot.js"></script>
	<script src="${ctx}/js/jquery.flot.pie.js"></script>
	<script src="${ctx}/js/jquery.flot.stack.js"></script>
	<script src="${ctx}/js/jquery.flot.resize.min.js"></script>
	
		<script src="${ctx}/js/jquery.chosen.min.js"></script>
	
		<script src="${ctx}/js/jquery.uniform.min.js"></script>
		
		<script src="${ctx}/js/jquery.cleditor.min.js"></script>
	
		<script src="${ctx}/js/jquery.noty.js"></script>
	
		<script src="${ctx}/js/jquery.elfinder.min.js"></script>
	
		<script src="${ctx}/js/jquery.raty.min.js"></script>
	
		<script src="${ctx}/js/jquery.iphone.toggle.js"></script>
	
		<script src="${ctx}/js/jquery.uploadify-3.1.min.js"></script>
	
		<script src="${ctx}/js/jquery.gritter.min.js"></script>
	
		<script src="${ctx}/js/jquery.imagesloaded.js"></script>
	
		<script src="${ctx}/js/jquery.masonry.min.js"></script>
	
		<script src="${ctx}/js/jquery.knob.modified.js"></script>
	
		<script src="${ctx}/js/jquery.sparkline.min.js"></script>
	
		<script src="${ctx}/js/counter.js"></script>
	
		<script src="${ctx}/js/retina.js"></script>

		<script src="${ctx}/js/custom.js"></script>
	<!-- end: JavaScript-->
	
</body>
</html>
