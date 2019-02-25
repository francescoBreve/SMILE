
Highcharts.chart('container', {
	chart: {
		type: 'line'
	},
	title: {
		text: 'Le tue statistiche: '
	},

	xAxis: {
		categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
	},
	yAxis: {
		title: {
			text: 'Punti'
		}
	},
	plotOptions: {
		line: {
			dataLabels: {
				enabled: true
			},
			enableMouseTracking: false
		}
	},
	series: [{
		name: 'Italiano',
		data: [0,200]
	}, {
		name: 'Inglese',
		data: [0,0,0,0,0,0,0,0,0,0,0,0]
	}, {
		name: 'Matematica',
		data: [0,0,0,0,0,0,0,0,0,0,0,0]
	}, {
		name: 'Logica',
		data: [0,0,0,0,0,0,0,0,0,0,0,0]
	}]
	
});