google.load("visualization", "1", {packages:["corechart"]});
google.setOnLoadCallback(drawLineChart);
function drawLineChart() {
	var data = google.visualization.arrayToDataTable([
		['Date', 'Visitors'],
		['05,12 2012',  700],
		['05,13 2012',  660],
		['05,14 2012',  790],
		['05,15 2012',  1160],
		['05,16 2012',  1270],
		['05,17 2012',  1830]
	]);

	var options = {
		title: 'Last Visits Graph',
		backgroundColor: { fill:'transparent' }
	};

	var chart = new google.visualization.LineChart(document.getElementById('last_visit'));
		chart.draw(data, options);
}

google.setOnLoadCallback(drawPieChart);
function drawPieChart() {
var data = google.visualization.arrayToDataTable([
  ['Length', 'Visits'],
  ['0-30s', 3678],
  ['30-60s', 1200],
  ['1-2 min', 650],
  ['2-4 min', 554],
  ['16 min', 340],
  ['Others', 289]
]);

var options = {
  backgroundColor: { fill:'transparent' },
  chartArea:{left:0,top:0,width:"97%",height:"97%"},
  legend: {position: 'none'},
  is3D:true
};

var chart = new google.visualization.PieChart(document.getElementById('visit_length'));
chart.draw(data, options);
}

google.setOnLoadCallback(drawColChart);
function drawColChart() {
var data = google.visualization.arrayToDataTable([
  ['Websites', 'Count'],
  ['mydomain.com',  1000],
  ['myexternal.com',  1170],
  ['yourweb.com',  660],
  ['booting.com',  1030]
]);

var options = {
  backgroundColor: { fill:'transparent' },
  legend:{position:"none"},
  chartArea:{left:0,top:0,width:"97%",height:"77%"}
};

var chart = new google.visualization.ColumnChart(document.getElementById('external_websites'));
chart.draw(data, options);
}