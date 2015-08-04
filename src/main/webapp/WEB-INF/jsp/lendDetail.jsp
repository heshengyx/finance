<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<title>P2P网-投资详情</title>
	<link href="${ctx}/css/carousel.css" rel="stylesheet">
	<style type="text/css">
	.container-nav ol {
	  background-color: #F2F2F2;
	}
	.col-divider {
	  border-right: 1px solid #F2F2F2;
	}
	.row-height {
	  height: 5px;
	}
	.dataTables_wrapper .dataTables_length {
	  padding-top: 0.755em;
	}
	.row-header {
	  border-bottom: 1px solid #F2F2F2;
	}
	.row-header > .col-md-4 {
	  padding-top: 30px;
	}
	.container-tabs {
	  width: 940px;
	  margin: 0 auto;
	  padding: 0;
	}
	.container-tabs-content {
	  border-top: 0;
	}
	.col-md-4 > .panel {
	  margin-bottom: 0;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
</head>

<body>
	
	<div class="container">
	  <div class="container-nav">
	    <ol class="breadcrumb">
		  <li><a href="#">首页</a></li>
		  <li><a href="#">我要投资</a></li>
		  <li><a href="#">投资项目</a></li>
		  <li class="active">借款详情</li>
		</ol>
	  </div>
	  <div class="container container-content">
	    <div class="row row-header">
	      <div class="col-md-8">
	        <h3>${product.title}</h3>
	      </div>
	      <div class="col-md-4 text-right">借款协议（范本）</div>
	    </div>
	    <br>
	    <div class="row">
	      <div class="col-md-8">
	        <div class="row">
	          <div class="col-sm-5">标的总额 （元）<h2>￥30,000</h2></div>
	          <div class="col-sm-3">年利率<h2>13.00%</h2></div>
	          <div class="col-sm-4">还款期限 （月）<h2>24</h2></div>
	        </div>
	        <br>
	        <div class="row">
	          <div class="col-sm-2">保障方式</div>
	          <div class="col-sm-3">本金</div>
	          <div class="col-sm-3">提前还款费率</div>
	          <div class="col-sm-4">1.00%</div>
	        </div>
	        <div class="row">
	          <div class="col-sm-2">还款方式</div>
	          <div class="col-sm-3">按月还款/等额本息</div>
	          <div class="col-sm-3">月还本息（元）</div>
	          <div class="col-sm-4">1,428.00</div>
	        </div>
	        <br>
	        <div class="row">
	          <div class="col-sm-2">投标进度</div>
	          <div class="col-sm-6">
	            <div class="progress">
				  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
				    60%
				  </div>
				</div>
	          </div>
	          <div class="col-sm-4">剩余时间6天23时54分</div>
	        </div>
	      </div>
	      <div class="col-md-4">
			  <div class="panel panel-info">
			    <div class="panel-heading">
		     	  <h3 class="panel-title">剩余金额（元）</h3>
		  	  	</div>
			    <div class="panel-body">
			      <h3>￥28,200（564份）</h3>
			      <p>账户余额</p>
			      <a class="btn btn-primary btn-lg btn-block" href="${ctx}/register" role="button">投标</a>
			    </div>
			  </div>
	      </div>
	    </div>
	    <br>
	  </div>
	  <!--  -->
	  <br>
	  <div class="container container-tabs">
	    <ul class="nav nav-tabs" id="navTab">
		  <li role="presentation" class="active"><a href="#detail" data-toggle="tab">标的详情</a></li>
		  <li role="presentation"><a href="#record" data-toggle="tab">投标记录</a></li>
		</ul>
	  </div>
	  <div class="tab-content">
	  <div class="container container-content container-tabs-content tab-pane active" id="detail">
	    <h3>用户信息</h3>
	    <div class="row">
	      <div class="col-xs-1 col-xs-offset-1">昵    称</div>
	      <div class="col-xs-2">Jack</div>
	      <div class="col-xs-2 text-right">公司行业</div>
	      <div class="col-xs-2">政府机关</div>
	      <div class="col-xs-2 text-right">收入范围</div>
	      <div class="col-xs-2">2000-5000元</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-1 col-xs-offset-1">年    龄</div>
	      <div class="col-xs-2">28</div>
	      <div class="col-xs-2 text-right">公司规模</div>
	      <div class="col-xs-2">100-500人</div>
	      <div class="col-xs-2 text-right">房        产</div>
	      <div class="col-xs-2">有</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-1 col-xs-offset-1">学    历</div>
	      <div class="col-xs-2">Jack</div>
	      <div class="col-xs-2 text-right">岗位职位</div>
	      <div class="col-xs-2">政府机关</div>
	      <div class="col-xs-2 text-right">房       贷</div>
	      <div class="col-xs-2">有</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-1 col-xs-offset-1">学    校</div>
	      <div class="col-xs-2">广西财经学院</div>
	      <div class="col-xs-2 text-right">工作城市</div>
	      <div class="col-xs-2">广西 贵港</div>
	      <div class="col-xs-2 text-right">车        产</div>
	      <div class="col-xs-2">有</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-1 col-xs-offset-1">婚    姻</div>
	      <div class="col-xs-2">28</div>
	      <div class="col-xs-2 text-right">工作时间</div>
	      <div class="col-xs-2">5年以上</div>
	      <div class="col-xs-2 text-right">车        贷</div>
	      <div class="col-xs-2">有</div>
	    </div>
	    <hr>
	    <h3>信用档案</h3>
	    <div class="row">
	      <div class="col-xs-2 col-xs-offset-1">申请借款（笔）</div>
	      <div class="col-xs-1">2</div>
	      <div class="col-xs-2 text-right">信用额度（元）</div>
	      <div class="col-xs-2">21,600.00</div>
	      <div class="col-xs-2 text-right">逾期金额（元）</div>
	      <div class="col-xs-2">0.00</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-2 col-xs-offset-1">成功借款（笔）</div>
	      <div class="col-xs-1">1</div>
	      <div class="col-xs-2 text-right">借款总额（元）</div>
	      <div class="col-xs-2">21,600.00</div>
	      <div class="col-xs-2 text-right">逾期次数（次）</div>
	      <div class="col-xs-2">0</div>
	    </div>
	    <div class="row">
	      <div class="col-xs-2 col-xs-offset-1">还清笔数（笔）</div>
	      <div class="col-xs-1">1</div>
	      <div class="col-xs-2 text-right">待还本息（元）</div>
	      <div class="col-xs-2">21,600.00</div>
	      <div class="col-xs-2 text-right">严重逾期（笔）</div>
	      <div class="col-xs-2">0</div>
	    </div>
	    <hr>
	    <h3>审核状态</h3>
	    <table class="table" id="auth-list">
	      <thead>
	       <tr class="info">
	         <th>审核项目</th>
	         <th>状态</th>
	         <th>通过日期</th>
	       </tr>
	      </thead>
	    </table>
	    <hr>
	    <h3>借款描述</h3>
	    <div class="row">
	      <div class="col-xs-11 col-xs-offset-1">此次借款用于房屋装修。本人在临颍县固厢乡北四村学校担任校长至今6年，每个月都有固定收入。本人长期定居在河南省漯河市临颍县，信用记录也很好，完全可以承担此次借款所产生的费用。</div>
	    </div>
	    <br>
	  </div>
	  <!-- tab2 -->
	  <div class="container container-content container-tabs-content tab-pane" id="record">
	    <br>
	    <table class="table" id="table-list">
	      <thead>
	       <tr class="info">
	         <th width="50">序号</th>
	         <th>投标人</th>
	         <th>投标金额</th>
	         <th>投标时间</th>
	       </tr>
	      </thead>
	    </table>
	    <br>
	  </div>
	  </div>
	</div>
	<jscript>
	<script src="${ctx}/js/format.js"></script>
	<script src="${ctx}/js/jquery.dataTables.min.js"></script>
	<script>
	$(document).ready(function() {
		$('#navTab a:first').tab('show');
		
		var t = $('#table-list').DataTable({
    		"language": {
    			"processing": "处理中...",
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "search": "搜索",
                "paginate": {
                	 "first":    "首页",
			         "previous": "上页 ",
			         "next":     "下页 ",
			         "last":     "末页 "
			     }
            },
            //"dom": "<'row'<'col-xs-2'l><'#mytool.col-xs-4'><'col-xs-6'f>r>t<'row'<'col-xs-6'i><'col-xs-6'p>>",
            "dom": "<'toolbar'>rt<'bottom'<'row'<'col-xs-2'i><'col-xs-10'p>><'clear'>>",
            //"dom": '<"toolbar">rt<"bottom"ilp<"clear">>',
    		//"pagingType":  "full_numbers",
    		//"scrollX": "100%",
    		//"scrollXInner": "100%",
    		"filter": false, 
    		"processing": true,
            "serverSide": true,
            "ajax": {
				"url": "${ctx}/invest/record/${product.id}",
				"type": "POST"
			},
			"order": [[ 1, "desc" ]],
			"columnDefs": [
				{
				    "searchable": false,
				    "orderable": false,
				    "render": function(data, type, row) {
				    	return "";
				    },
				    "targets": 0
				},
				{
					"render": function(data, type, row) {
				    	return to_date_hms(data.createTime);
				    },
				    "targets": [3]
				}
			],
			"columns": [
	            { "data": null },
	            { "data": "username" },
	            { "data": "money" },
	            { "data": null }
	        ],
	        initComplete: function () {
	        	/* $("#table-list tbody tr").each(function(i) { 
	    			$(this).find("td:first").html(i + 1); 
	    		}); */
	        }
		});
		t.on( 'order.dt search.dt', function () {
	        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
	            cell.innerHTML = i+1;
	        } );
	    } ).draw();
		$('#auth-list').DataTable({
    		"language": {
                /* "lengthMenu": "每页 _MENU_ 条记录",*/
                "zeroRecords": "没有找到记录",
                /* "info": "第 _PAGE_ 页 ( 总共 _PAGES_ 页 )", */
                "infoEmpty": "无记录",
                /* "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "search": "搜索",
                "paginate": {
			         "first":    "第一页",
			         "previous": "上一页 ",
			         "next":     "下一页 ",
			         "last":     "最后一页 "
			     } */
            },
            //"dom": "<'row'<'col-xs-2'l><'#mytool.col-xs-4'><'col-xs-6'f>r>t<'row'<'col-xs-6'i><'col-xs-6'p>>",
            //"dom": "<'toolbar'>rt<'bottom'<'row'<'col-xs-2'i><'col-xs-10'p>><'clear'>>",
            //"dom": '<"toolbar">rt<"bottom"ilp<"clear">>',
    		//"pagingType":  "full_numbers",
    		//"scrollX": "100%",
    		//"scrollXInner": "100%",
    		"filter": false, 
    		"processing": true,
            "serverSide": true,
            "paginate": false,
            "lengthChange": false,
            "sort": false,
            "info": false,
            "ajax": {
				"url": "${ctx}/auth/record/${product.userId}",
				"type": "POST"
			},
			"columnDefs": [
				{
					"render": function(data, type, row) {
						var content = "";
						if (data.status == "1") {
							content += '<span class="badge badge-AA"><span class="glyphicon glyphicon-ok" aria-hidden="true"></span></span>';
						}
				        return content;
				    },
				    "targets": [1]
				},
				{
					"render": function(data, type, row) {
				    	return to_date(data.createTime);
				    },
				    "targets": [2]
				}
			],
			"columns": [
	            { "data": "authType" },
	            { "data": null },
	            { "data": null }
	        ]
		});
	});
	</script>
	</jscript>
</body>
</html>
