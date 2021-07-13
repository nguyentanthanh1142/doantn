<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản trị</title>
</head>
<body>
	<div class="content-wrapper pt-3">
		<!-- Content Header (Page header) -->
		<!-- Main content -->
		<section class="content">
			<!-- Default box -->
			<div class="card">
				<div class="card-header">
					<h3 class="card-title">
						<strong class="text-uppercase text-danger">Thống kê</strong>
					</h3>

					<div class="card-tools"></div>
				</div>
				<div class="card-body">
					<div class="pt-4">
						<div id="chart_div"></div>
						<div id="curve_chart" style="width: 900px; height: 500px"></div>
					</div>
				</div>
			</div>
			<!-- /.card -->

		</section>
		<!-- /.content -->
	</div>
	<script>
	
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawBasic);

	function drawBasic() {

		var data = google.visualization.arrayToDataTable([
			['Thành phần', 'Tỉ trọng', { role: 'style' }], <c:forEach var="item" items="${listReceipt}">[ '${item.time}' , ${item.value} , '#3366CC' ],</c:forEach>]);

		 var options = {
			        title: 'Thống kê hóa đơn trong 7 ngày',
			        hAxis: {
			          title: 'Ngày'
			        },
			        vAxis: {
			          title: 'Số hóa đơn'
			        }
			      };

	      var chart = new google.visualization.ColumnChart(
	        document.getElementById('chart_div'));

	      chart.draw(data,options);
	    }
	</script>


	<script>
    google.charts.load('current', {'packages':['line']});
    google.charts.setOnLoadCallback(drawChart);

function drawChart() {
 
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Loại')
	<c:forEach var="entry" items="${mapCate}">  data.addColumn('number', '${entry.value}'); </c:forEach>


    data.addRows([
    	<c:forEach var="item" items="${rpCate}"> 
    	['${item.time}'
    		<c:forEach var="entry" items="${mapCate}">
    		,${item.mapValue.containsKey(entry.key)?item.mapValue[entry.key]:0}
    		</c:forEach>],
    	</c:forEach>
    ]);


    var options = {
            chart: {
              title: 'Số lượng bán được của sản phẩm trong 6 tháng',
              subtitle: 'Sản lượng'
            },
            width: 900,
            height: 500
          };
  var chart = new google.charts.Line(document.getElementById('curve_chart'));

  chart.draw(data, google.charts.Line.convertOptions(options));
}
</script>


</body>
</html>