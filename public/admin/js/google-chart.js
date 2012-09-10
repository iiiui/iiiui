 /* GOOGLE CHART SAMPLE
  * ================== */
google.load('visualization', '1', {'packages': ['geochart', 'corechart', 'gauge']});
google.setOnLoadCallback(drawRegionsMap);
google.setOnLoadCallback(drawAreaChart);
google.setOnLoadCallback(drawColumnChart);
google.setOnLoadCallback(drawComboChart);
google.setOnLoadCallback(drawGaugeChart);
google.setOnLoadCallback(drawLineChart);
google.setOnLoadCallback(drawPieChart);
google.setOnLoadCallback(drawBarChart);

function drawRegionsMap() {
var data = google.visualization.arrayToDataTable([
  ['Country', 'Popularity'],
  ['Germany', 200],
  ['United States', 300],
  ['Brazil', 400],
  ['Canada', 500],
  ['France', 600],
  ['RU', 700],
  ['Indonesia', 900]
]);

var options = {backgroundColor: { fill:'transparent' }};

var chart = new google.visualization.GeoChart(document.getElementById('chart_geo_div'));
chart.draw(data, options);
};

function drawAreaChart() {
var data = google.visualization.arrayToDataTable([
  ['Year', 'Sales', 'Expenses'],
  ['2004',  1000,      400],
  ['2005',  1170,      460],
  ['2006',  660,       1120],
  ['2007',  1030,      540]
]);

var options = {
  title: 'Company Performance',
  hAxis: {title: 'Year',  titleTextStyle: {color: 'red'}},
  legend: {position: 'bottom'},
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.AreaChart(document.getElementById('chart_area_div'));
chart.draw(data, options);
}

function drawColumnChart() {
var data = google.visualization.arrayToDataTable([
  ['Year', 'Sales', 'Expenses'],
  ['2004',  1000,      400],
  ['2005',  1170,      460],
  ['2006',  660,       1120],
  ['2007',  1030,      540]
]);

var options = {
  title: 'Company Performance',
  hAxis: {title: 'Year', titleTextStyle: {color: 'red'}},
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.ColumnChart(document.getElementById('chart_column_div'));
chart.draw(data, options);
}

function drawComboChart() {
// Some raw data (not necessarily accurate)
var data = google.visualization.arrayToDataTable([
  ['Month', 'Bolivia', 'Ecuador', 'Madagascar', 'Papua New Guinea', 'Rwanda', 'Average'],
  ['2004/05',  165,      938,         522,             998,           450,      614.6],
  ['2005/06',  135,      1120,        599,             1268,          288,      682],
  ['2006/07',  157,      1167,        587,             807,           397,      623],
  ['2007/08',  139,      1110,        615,             968,           215,      609.4],
  ['2008/09',  136,      691,         629,             1026,          366,      569.6]
]);

var options = {
  title : 'Monthly Coffee Production by Country',
  vAxis: {title: "Cups"},
  hAxis: {title: "Month"},
  seriesType: "bars",
  series: {5: {type: "line"}},
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.ComboChart(document.getElementById('chart_combo_div'));
chart.draw(data, options);
}

function drawGaugeChart() {
var data = google.visualization.arrayToDataTable([
  ['Label', 'Value'],
  ['Memory', 80],
  ['CPU', 55]
]);

var options = {
  width: 400, height: 120,
  redFrom: 90, redTo: 100,
  yellowFrom:75, yellowTo: 90,
  minorTicks: 5,
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.Gauge(document.getElementById('chart_gauge_div'));
chart.draw(data, options);
}

function drawLineChart() {
var data = google.visualization.arrayToDataTable([
  ['Year', 'Sales', 'Expenses'],
  ['2004',  1000,      400],
  ['2005',  1170,      460],
  ['2006',  660,       1120],
  ['2007',  1030,      540]
]);

var options = {
  title: 'Company Performance',
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.LineChart(document.getElementById('chart_line_div'));
chart.draw(data, options);
}

function drawPieChart() {
var data = google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['Work',     11],
  ['Eat',      2],
  ['Commute',  2],
  ['Watch TV', 2],
  ['Sleep',    7]
]);

var options = {
  title: 'My Daily Activities',
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.PieChart(document.getElementById('chart_pie_div'));
chart.draw(data, options);
}

function drawBarChart() {
var data = google.visualization.arrayToDataTable([
  ['Year', 'Sales', 'Expenses'],
  ['2004',  1000,      400],
  ['2005',  1170,      460],
  ['2006',  660,       1120],
  ['2007',  1030,      540]
]);

var options = {
  title: 'Company Performance',
  vAxis: {title: 'Year',  titleTextStyle: {color: 'red'}},
  backgroundColor: { fill:'transparent' }
};

var chart = new google.visualization.BarChart(document.getElementById('chart_bar_div'));
chart.draw(data, options);
}