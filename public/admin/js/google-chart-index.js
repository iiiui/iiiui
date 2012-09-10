google.load('visualization', '1', {'packages': ['geochart']});
google.setOnLoadCallback(drawRegionsMap);
function drawRegionsMap() {
var data = google.visualization.arrayToDataTable([
  ['Country', 'Visitors'],
  ['Germany', 200],
  ['United States', 300],
  ['Brazil', 400],
  ['Canada', 500],
  ['France', 600],
  ['RU', 700],
  ['Indonesia', 1200]
]);

var options = {backgroundColor: { fill:'transparent' }};

var chart = new google.visualization.GeoChart(document.getElementById('chart_geo_div'));
chart.draw(data, options);
};