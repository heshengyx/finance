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
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
	
	<div class="container">
	  <div class="container-nav">
	    <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li class="active">我要理财</li>
		</ol>
	  </div>
	  <div class="container container-content">
	    <h3>借款费率</h3>
	  	<table class="table">
	      <thead>
	        <tr>
	          <th>信用等级</th>
	          <th>信用分数区间</th>
	          <th>月综合费率</th>
	          <th>期初服务费率</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr class="active">
	          <td><span class="badge badge-AA">AA</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	        <tr>
	          <td><span class="badge badge-A">A</span></td>
	          <td>180-209</td>
	          <td>0.60%</td>
	          <td>1%</td>
	        </tr>
	        <tr class="active">
	          <td><span class="badge badge-B">B</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	        <tr>
	          <td><span class="badge badge-C">C</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	        <tr class="active">
	          <td><span class="badge badge-D">D</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	        <tr>
	          <td><span class="badge badge-E">E</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	        <tr class="active">
	          <td><span class="badge badge-HR">HR</span></td>
	          <td>210+</td>
	          <td>0.55%</td>
	          <td>0%</td>
	        </tr>
	      </tbody>
	  	</table>
	  	<div class="row-height"></div>
	  </div>
	  <br>
	  <div class="container container-content">
	    <h3>借款优势</h3>
	    <div class="row">
	      <div class="col-sm-3 text-center">
	        <img src="${ctx}/images/pic1.png" alt="..." class="img-circle">
	        <h4>门槛 <span class="text-warning"><strong>低</strong></span></h4>
	        <p>月收入2000元即可申请</p>
	      </div>
	      <div class="col-sm-3 text-center">
	        <img src="${ctx}/images/pic2.png" alt="..." class="img-circle">
	        <h4>额度 <span class="text-warning"><strong>大</strong></span></h4>
	        <p>最高借款额度达50万元</p>
	      </div>
	      <div class="col-sm-3 text-center">
	        <img src="${ctx}/images/pic3.png" alt="..." class="img-circle">
	        <h4>放款 <span class="text-warning"><strong>快</strong></span></h4>
	        <p>3个工作日内即可审核完成</p>
	      </div>
	      <div class="col-sm-3 text-center">
	        <img src="${ctx}/images/pic4.png" alt="..." class="img-circle">
	        <h4>费率 <span class="text-warning"><strong>低</strong></span></h4>
	        <p>月综合费率低至0.55%</p>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>
