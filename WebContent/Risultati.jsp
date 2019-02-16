<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smile.model.Statistica"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Riepilogo</title>

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


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body class="w3-container">
</head>


<style>
body {
	display: flex;
	justify-content: center;
	text-align: center;
	background: beige;
}
</style>
<script type="text/javascript">
	function myStats() {
		window.location.href = "StatFetcher";
	}
</script>

<link rel="stylesheet" href="textAnimatedPlayEdited.css" type="text/css">
<body style="overflow: auto">
<body>
	<br>
	<%
		Statistica atm = (Statistica) request.getAttribute("statistica");
		String nomeGioco = atm.getNomeGioco();
		String punteggio = "" + atm.getPunteggio();
		String num_domande = "" + atm.getNdomande();
		String corrette = "" + atm.getCorrette();
		String tempo = "" + atm.getTempo();
	%>


	<h1
		style="position: relative; right: 40%; position: absolute; z-index: 1">
		<div>
			<a href="play.jsp"> <span>S</span><span>M</span><span>I</span><span>L</span><span>E</span>
			</a>
		</div>
	</h1>



	<div class="alert alert-primary"
		style="margin-bottom: 15%; position: absolute;  z-index: 3; top: 25%;size=2">
		<h3 style="font-family: Comic Sans MS;">
			Punteggio:
			<%=punteggio%>
		</h3>
	</div>
	<br>



	<div class="alert alert-primary"
		style="margin-bottom: 10%; position: absolute; font-family: Comic Sans MS; z-index: 3; top: 40%">
		<p>
			Gioco giocato:
			<%=nomeGioco%>
			<br> risposte corrette su
			<%=num_domande%>
			<br> Hai impiegato
			<%=tempo%>
		</p>
	</div>
	<br>

	<button class="btn btn-primary" onclick="myStats()"
		style="top: 70%; position: absolute; font-family: Comic Sans MS; z-index: 2">Vedi
		tutte le statistiche</button>
</body>
</html>