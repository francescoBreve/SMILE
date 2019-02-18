
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
		name: 'Ialiano',
		data: [50,150,50,0,350,400,0,50]
	}, {
		name: 'Inglese',
		data: [0,150,400,500,450,0,50,300]
	}, {
		name: 'Inglese',
		data: [300,400,500]
	}, {
		name: 'Inglese',
		data: [0,50]
	}]
	
});