<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-我要投资</title>
	<link href="${ctx}/css/carousel.css" rel="stylesheet">
	<style type="text/css">
	.container-nav ol {
	  background-color: #F2F2F2;
	}
	.col-divider {
	  border-right: 1px solid #F2F2F2;
	}
	.container-content > .row {
	  margin-top: 10px;
	  margin-bottom: 10px;
	}
	.row-height {
	  height: 5px;
	}
	</style>
	<link href="${ctx}/css/dataTables.bootstrap.css" rel="stylesheet">
</head>

<body>
	
	<div class="container">
	  <div class="container-nav">
	    <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">我要投资</a></li>
		  <li class="active">投资项目</li>
		</ol>
	  </div>
	  <div class="container container-content">
	    <div class="row">
		  <div class="col-md-8 col-divider">
		    <h4>项目列表</h4>
		    <div class="row">
		      <div class="col-sm-2"><h5>标的类型</h5></div>
		      <div class="col-sm-10">
		      <div class="btn-group btn-group-sm" role="group" aria-label="...">
			    <button type="button" class="btn btn-primary">不限</button>
			    <button type="button" class="btn btn-default">信用认证标</button>
			    <button type="button" class="btn btn-default">实地认证标</button>
			    <button type="button" class="btn btn-default">机构担保标</button>
			    <button type="button" class="btn btn-default">智能理财标</button>
			  </div>
			  </div>
		    </div>
		    <div class="row-height"></div>
		    <div class="row">
		      <div class="col-sm-2"><h5>借款期限</h5></div>
		      <div class="col-sm-10">
		      <div class="btn-group btn-group-sm" role="group" aria-label="...">
			    <button type="button" class="btn btn-primary">不限</button>
			    <button type="button" class="btn btn-default">6个月及以下</button>
			    <button type="button" class="btn btn-default">7-12个月</button>
			    <button type="button" class="btn btn-default">13-24个月</button>
			    <button type="button" class="btn btn-default">25个月及以上</button>
			  </div>
			  </div>
		    </div>
		    <div class="row-height"></div>
		    <div class="row">
		      <div class="col-sm-2"><h5>认证等级</h5></div>
		      <div class="col-sm-10">
		      <div class="btn-group btn-group-sm" role="group" aria-label="...">
			    <button type="button" class="btn btn-primary">不限</button>
			    <button type="button" class="btn btn-default">AA</button>
			    <button type="button" class="btn btn-default">A</button>
			    <button type="button" class="btn btn-default">B</button>
			    <button type="button" class="btn btn-default">C</button>
			    <button type="button" class="btn btn-default">D</button>
			    <button type="button" class="btn btn-default">E</button>
			    <button type="button" class="btn btn-default">HR</button>
			  </div>
			  </div>
		    </div>
		  </div>
		  <div class="col-md-4">
		  	<h4>新手引导</h4>
		  	<div class="row-height"></div>
		    <div>什么是信用等级？</div>
		    <div class="row-height"></div>
	    	<div>什么是信用认证标？</div>
	    	<div class="row-height"></div>
	    	<div>什么是实地认证标？</div>
	    	<div class="row-height"></div>
	    	<div>什么是机构担保标？</div>
		  </div>
		</div>
	  </div>
	  <br>
	  <div class="container container-content">
	  	<table class="table" id="table-list">
	  	  <caption><h4>投资列表</h4></caption>
	      <thead>
	        <tr>
	          <th>#</th>
	          <th>借款标题</th>
	          <th>信用等级</th>
	          <th>年利率</th>
	          <th>金额</th>
	          <th>期限</th>
	          <th>进度</th>
	        </tr>
	      </thead>
	      <tbody></tbody>
	  	</table>
	    <table class="table">
	      <caption><h4>投资列表</h4></caption>
	      <thead>
	        <tr>
	          <th>#</th>
	          <th>借款标题</th>
	          <th>信用等级</th>
	          <th>年利率</th>
	          <th>金额</th>
	          <th>期限</th>
	          <th>进度</th>
	        </tr>
	      </thead>
	      <tbody>
	        <tr>
	          <th scope="row">1</th>
	          <td>Mark</td>
	          <td><span class="badge">A</span></td>
	          <td>@mdo</td>
	          <td>@mdo</td>
	          <td>@mdo</td>
	          <td><button type="button" class="btn btn-primary">投标</button></td>
	        </tr>
	        <tr>
	          <th scope="row">2</th>
	          <td>Jacob</td>
	          <td>Thornton</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">3</th>
	          <td>Larry</td>
	          <td>the Bird</td>
	          <td>@twitter</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">2</th>
	          <td>Jacob</td>
	          <td>Thornton</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">3</th>
	          <td>Larry</td>
	          <td>the Bird</td>
	          <td>@twitter</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">2</th>
	          <td>Jacob</td>
	          <td>Thornton</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">3</th>
	          <td>Larry</td>
	          <td>the Bird</td>
	          <td>@twitter</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">2</th>
	          <td>Jacob</td>
	          <td>Thornton</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">3</th>
	          <td>Larry</td>
	          <td>the Bird</td>
	          <td>@twitter</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">2</th>
	          <td>Jacob</td>
	          <td>Thornton</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	        <tr>
	          <th scope="row">3</th>
	          <td>Larry</td>
	          <td>the Bird</td>
	          <td>@twitter</td>
	          <td>@fat</td>
	          <td>@fat</td>
	          <td>@fat</td>
	        </tr>
	      </tbody>
	    </table>
	  </div>
	</div>
	<jscript>
	<script src="${ctx}/js/jquery.dataTables.min.js"></script>
    <script src="${ctx}/js/dataTables.bootstrap.js"></script>
	<script>
	var table;
	$(document).ready(function() {
		table = $('#table-list').DataTable({
    		"language": {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "search": "搜索",
                "paginate": {
			         "first":    "第一页",
			         "previous": "上一页 ",
			         "next":     "下一页 ",
			         "last":     "最后一页 "
			     }
            },
            //"dom": "<'row'<'col-xs-2'l><'#mytool.col-xs-4'><'col-xs-6'f>r>t<'row'<'col-xs-6'i><'col-xs-6'p>>",
            "dom": "<'toolbar'>rt<'bottom'<'row'<'col-xs-2'i><'col-xs-2'l><'col-xs-8'p>><'clear'>>",
            //"dom": '<"toolbar">rt<"bottom"ilp<"clear">>',
    		"pagingType":  "full_numbers",
    		//"scrollX": "100%",
    		//"scrollXInner": "100%",
    		"filter": true, 
    		"processing": true,
            "serverSide": true,
            "ajax": {
				"url": "${ctx}/lend/list",
				"type": "POST"
			},
			"columns": [
				{ "data": null },
	            { "data": "name" },
	            { "data": null },
	            { "data": null },
	            { "data": null },
	            { "data": null },
	            { "data": null }
	        ]
    	});
	});
	</script>
	</jscript>
</body>
</html>
