<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/include.jsp"%>  
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
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
	.container-panel {
	  /* border: 1px solid #dddddd;
  	  background-color: #FFFFFF; */
	}
	.container-panel-content {
	  border: 1px solid #dddddd;
  	  background-color: #FFFFFF;
  	  padding-left: 20px;
  	  padding-right: 20px;
	}
	</style>
	<link href="${ctx}/css/jquery.dataTables.min.css" rel="stylesheet">
	<link href="${ctx}/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
</head>

<body>
	<div class="container-panel-content">
	  <h4>交易记录</h4>
	  <br>
	  <form class="form-inline" action="#" method="post" id="dataForm">
	  <div class="form-group">
	    <label class="control-label" for="inputType">查询类型</label>&nbsp;
	    <select class="form-control" id="inputType" name="type">
	      <option value="">全部</option>
		  <option value="1">充值</option>
		  <option value="0">提现</option>
		</select>
		&nbsp;&nbsp;
	  </div>
	  <div class="form-group">
	    <label class="control-label" for="inputDate">查询时间</label>&nbsp;
	    <input type="text" class="form-control" id="inputDate" name="date">
	    &nbsp;&nbsp;
	  </div>
	  <button type="button" class="btn btn-primary btn-sm" id="search-btn">查询</button>
	  </form>
      <table class="table" id="table-list">
      <caption>交易列表</caption>
      <thead>
        <tr class="info">
          <th>时间</th>
          <th>类型明细</th>
          <th>收入</th>
          <th>支出</th>
          <th>结余</th>
          <th>备注</th>
        </tr>
      </thead>
      </table>
      <br>
	</div>
	<jscript>
	<script src="${ctx}/js/format.js"></script>
	<script src="${ctx}/js/jquery.dataTables.min.js"></script>
	<script src="${ctx}/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${ctx}/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script>
	$(document).ready(function() {
		$('#inputDate').datetimepicker({
    		language: 'zh-CN',
    		minView: "month",
    		format: 'yyyy-mm-dd',
    		autoclose: true,
    		todayBtn: true,
    		todayHighlight: true
    	});
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
            "dom": "<'toolbar'>rt<'bottom'<'row'<'col-md-5'i><'col-md-7'p>><'clear'>>",
            //"dom": '<"toolbar">rt<"bottom"ilp<"clear">>',
    		//"pagingType":  "full_numbers",
    		//"scrollX": "100%",
    		//"scrollXInner": "100%",
    		"filter": false, 
    		"processing": true,
            "serverSide": true,
            "ajax": {
				"url": "${ctx}/home/capital/trade/list",
				"type": "POST"
			},
			"order": [[ 0, "desc" ]],
			"columnDefs": [			
			    {
					"render": function(data, type, row) {
				    	return to_date_hms(data.createTime);
				    },
				    "targets": [0]
				},
				{
					"render": function(data, type, row) {
				    	return jmoney(data.amount);
				    },
				    "targets": [4]
				}
			],
			"columns": [
	            { "data": null },
	            { "data": "type" },
	            { "data": null },
	            { "data": null },
	            { "data": null },
	            { "data": "remarks" }
	        ]
		});
		/* $("#example tbody tr").each(function(i) { 
			$(this).find("td:first").html(i + 1); 
		});  */
		$("#search-btn").click(function() {
	        var search = "?random=" + Math.random();
	        search += "&type=" + $("#inputType").val();
	        search += "&date=" + $("#inputDate").val();
    		t.ajax.url("${ctx}/home/capital/trade/list" + search).load();
    	});
		/* $('#dataForm').bootstrapValidator({
			submitHandler: function(validator, form, submitButton) {
				alert(1);
				var search = "?";
		        search += "type=" + $("#inputType").val();
	    		t.ajax.url("${ctx}/home/capital/trade/refer" + search).load();
            }
        }); */
	});
	</script>
	</jscript>
</body>
</html>
