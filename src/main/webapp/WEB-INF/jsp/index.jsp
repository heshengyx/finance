<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-首页</title>
	<link href="${ctx}/css/carousel.css" rel="stylesheet">
	<style type="text/css">
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
	.box-wrapper {
	  position: absolute;
	  top: 150px;
	  right: 10%;
	  z-index: 30;
	}
	.box-wrapper .panel {
	  width: 350px;
	  height: 250px;
	}
	.panel-body h1 {
	  font-size: 60px;
	  color: #2EA7E0;
	}
	</style>
</head>

<body>
	
	<div class="box-wrapper highlight">
	  <div class="panel panel-info">
	    <div class="panel-heading">
     	  <h3 class="panel-title">人人贷成交额超过（元）</h3>
  	  	</div>
	    <div class="panel-body text-center">
	      <h1>93亿</h1>
	      <p>已为用户赚取71,883万元，累计交易745万人次</p>
	      <a class="btn btn-primary btn-lg btn-block" href="${ctx}/register" role="button">注册领红包</a>
	    </div>
	  </div>
	</div>
	<!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img class="first-slide" src="${ctx}/images/d34d7155-8db6-4850-a779-d786933bcc9e.jpg" alt="First slide">
          <!-- <div class="container">
            <div class="carousel-caption">
              <h1>Example headline.</h1>
              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>
            </div>
          </div> -->
        </div>
        <div class="item">
          <img class="second-slide" src="${ctx}/images/9996de59-a169-4903-b603-b15a35548d37.jpg" alt="Second slide">
          <!-- <div class="container">
            <div class="carousel-caption">
              <h1>Another example headline.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
            </div>
          </div> -->
        </div>
        <div class="item">
          <img class="third-slide" src="${ctx}/images/b8b97899-d3c3-4cd2-9051-d1964cfde783.png" alt="Third slide">
          <!-- <div class="container">
            <div class="carousel-caption">
              <h1>One more for good measure.</h1>
              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
            </div>
          </div> -->
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div><!-- /.carousel -->
    
    <div class="container marketing">
      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-md-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h4>投资理财</h4>
          <p>成为理财人，通过主动投标、加入U计划或薪计划将资金进行投资，最高获得<em class="text-big color-blue-text">12-14%</em>的预期年化收益。</p>
          <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-md-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h4>信用借款</h4>
          <p>成为借款人，按要求完善信用信息，获得信用认证后，通过发标进行借款，最快<em class="text-big color-blue-text">2.5小时</em>可获得所需资金。</p>
          <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
        </div><!-- /.col-lg-4 -->
        <div class="col-md-4">
          <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" width="140" height="140">
          <h4>安全保障</h4>
          <p>所有投资标的100%适用本金保障计划，人人贷风险金账户已被<em class="text-big color-blue-text">民生银行托管</em>，有效保障理财人的本金安全。</p>
          <p><a class="btn btn-default" href="#" role="button">查看详情 &raquo;</a></p>
        </div>
        <!-- /.col-lg-4 -->
      </div><!-- /.row -->
    </div>
</body>
</html>
