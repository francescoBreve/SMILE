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

</head>
<script type="text/javascript">
function myStats() {
	window.location.href = "StatFetcher";
}
</script>
<body>
Prova di una pagina di statistiche!
<br>
<% 	Statistica atm = (Statistica) request.getAttribute("statistica"); 
	String nomeGioco = atm.getNomeGioco();
	String punteggio = "" + atm.getPunteggio();
	String num_domande = "" +atm.getNdomande();
	String corrette = "" + atm.getCorrette();
	String tempo = "" + atm.getTempo();%>
Gioco giocato: <%= nomeGioco %> <br>
Punteggio: <%= punteggio %> <br>
<%= corrette %> risposte corrette su <%= num_domande %> <br>
Hai impiegato <%= tempo %> <br>

<button class="btn btn-primary"onclick="myStats()">Vedi tutte le statistiche</button>
</body>
</html>