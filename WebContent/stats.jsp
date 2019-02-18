<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smile.model.Utente"%>
<%@ page import="com.smile.model.Statistica"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Le mie statistiche</title>

<link rel="stylesheet" href="play.css" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300"
	type="text/css" />

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


</head>
<script type="text/javascript">
	function home() {
		window.location.href = "play.jsp";
	}
</script>

<link rel="stylesheet" href="textAnimatedPlay.css" type="text/css">

<style>
body {
	display: flex;
	justify-content: center;
	text-align: center;
	background: beige;
	overflow: hidden;
}

table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
	min-width: 280%;
	max-width: 800px;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>

<%
	Utente user = (Utente) request.getAttribute("utente");
	ArrayList<Statistica> stats = user.getStats();
%>

<body>

	<h1
		style="position: relative; right: 40%; position: absolute; z-index: 1">
		<div onclick="home()" style="cursor: pointer">
			<span>S</span><span>M</span><span>I</span><span>L</span><span>E</span>
		</div>
	</h1>

	<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist"
		style="margin-top: 10%; margin-left: 0%; z-index: 2; position: absolute">
		<li class="nav-item"><a class="nav-link active"
			id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
			aria-controls="pills-home" aria-selected="true"
			style="font-family: Comic Sans MS">Statistiche</a></li>
		<li class="nav-item"><a class="nav-link" id="pills-profile-tab"
			data-toggle="pill" href="#pills-profile" role="tab"
			aria-controls="pills-profile" aria-selected="false"
			style="font-family: Comic Sans MS">Statistiche Avanzate</a></li>
		<li class="nav-item"><a class="nav-link" id="pills-contact-tab"
			data-toggle="pill" href="#pills-contact" role="tab"
			aria-controls="pills-contact" aria-selected="false"
			style="font-family: Comic Sans MS">Suggerimenti</a></li>
	</ul>
	<div class="tab-content" id="pills-tabContent"
		style="margin-top: 15%; margin-top: 15%; margin-right: 20%;">
		<div class="tab-pane fade show active" id="pills-home" role="tabpanel"
			aria-labelledby="pills-home-tab" style="margin-right: -10%">

			<p style="text-align: left">
			<table>
				<tr>
					<th>Materia</th>
					<th>Abilita'</th>
				</tr>
				<tr>
					<td>Italiano:</td>
					<td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
						class="fas fa-star"><i class="fas fa-star"></i></i><i
						class="far fa-star"></i></td>
				</tr>
				<tr>
					<td>Matematica:</td>
					<td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
						class="far fa-star"><i class="far fa-star"></i></i><i
						class="far fa-star"></i></td>
				</tr>
				<tr>
					<td>Inglese:</td>
					<td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
						class="fas fa-star"><i class="fas fa-star"></i></i><i
						class="fas fa-star"></i></td>

				</tr>
				<tr>
					<td>Logica</td>
					<td><i class="fas fa-star"></i><i class="fas fa-star"></i><i
						class="fas fa-star"><i class="far fa-star"></i></i><i
						class="far fa-star"></i></td>

				</tr>
			</table>
			</p>
			<ul style="text-align: left" class="w3-ul w3-border  w3-hoverable"
				id="listtofill">
				<li><h2>Partite giocate</h2></li>
				<li><b>Matematica</b> <small><i>(13/10/2015)</i></small> <br>
					Punteggio: 550</li>
				<li><b>Italiano</b> <small><i>(12/10/2015)</i></small> <br>
					Punteggio: 250</li>
			</ul>

		</div>
		<div class="tab-pane fade" id="pills-profile" role="tabpanel"
			aria-labelledby="pills-profile-tab">

			<div id="container"
				style="min-width: 300%; height: 300; margin: 0 auto; margin-left: 20%"></div>

		</div>


		<div class="tab-pane fade" id="pills-contact" role="tabpanel"
			aria-labelledby="pills-contact-tab">

			<b> Italiano</b>
			<div class="alert alert-info" role="alert">
				Devi ripetere meglio le doppie! <br> Devi ripetere le regole di
				'cq' 'qq'
			</div>
			<b>Inglese</b>
			<div class="alert alert-primary" role="alert">Sei
				bravissimo!Continua cosi!</div>
			<b> Matematica</b>
			<div class="alert alert-success" role="alert">Impara meglio le
				tabelline !!</div>
			<b>Logica</b>
			<div class="alert alert-secondary" role="alert">Devi leggere
				meglio le domande!</div>
		</div>
	</div>

</body>

<script src="js/avanzate.js"></script>

</html>